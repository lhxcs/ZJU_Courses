#include "def.h"
#include "server.h"

using namespace std;

mutex mtx;  // Mutex for protecting shared resources

server::server() {
    server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd < 0) {
        perror("[ERROR] failed to create socket");
        exit(EXIT_FAILURE);
    }
}

server::~server() {
    close(server_fd);
}

void handle_client(int client_fd) {
    const char hello_string[] = "Hello from server";
    send(client_fd, hello_string, sizeof(hello_string), 0);
    cout << "Sending Hello to the Client " << client_fd << endl;

    bool connection_state = true;
    packet pck;
    
    while (connection_state) {
        if (recv(client_fd, &pck, sizeof(pck), 0) < 0) {
            perror("[ERROR] Failed to receive message");
            continue;
        }

        lock_guard<mutex> lock(mtx);  // Automatically locks and unlocks the mutex

        switch (pck.type) {
            case REMOVE_CONNECT: {
                auto it = find_if(client_queue.begin(), client_queue.end(),
                                  [client_fd](const element& e) { return e.socket_id == client_fd; });
                if (it != client_queue.end()) {
                    client_queue.erase(it);
                    cout << "Remove connection from " << client_fd << " Bye!" << endl;
                    close(client_fd);
                    connection_state = false;
                }
                break;
            }
            case GET_TIME: {
                time_t t;
                time(&t);
                packet pck_send;
                pck_send.type = GET_TIME;
                snprintf(pck_send.data, sizeof(pck_send.data), "%ld", t);
                if (send(client_fd, &pck_send, sizeof(pck_send), 0) < 0) {
                    perror("[ERROR] Failed to send time");
                }
                cout << "Sending time data to client " << client_fd << endl;
                break;
            }
            case GET_NAME: {
                packet pck_send;
                pck_send.type = GET_NAME;
                gethostname(pck_send.data, sizeof(pck_send.data));
                if (send(client_fd, &pck_send, sizeof(pck_send), 0) < 0) {
                    perror("[ERROR] Failed to send server name");
                }
                cout << "Sending server name to client " << client_fd << endl;
                break;
            }
            case GET_LIST: {
                packet pck_send;
                memset(&pck_send, 0, sizeof(pck_send));
                pck_send.type = GET_LIST;

                for (const auto& client : client_queue) {
                    string tmp = "client: " + to_string(client.socket_id) + ", " + client.addr + ":" + to_string(client.port) + "\n";
                    strncat(pck_send.data, tmp.c_str(), sizeof(pck_send.data) - strlen(pck_send.data) - 1);
                }

                if (send(client_fd, &pck_send, sizeof(pck_send), 0) < 0) {
                    perror("[ERROR] Failed to send client list");
                }
                cout << "Sending client list to client " << client_fd << endl;
                break;
            }
            case SEND_MSG: {
                string data = pck.data;
                string ip = data.substr(0, data.find(":"));
                data = data.substr(data.find(":") + 1);
                int port = stoi(data.substr(0, data.find(",")));
                data = data.substr(data.find(",") + 1);

                auto it = find_if(client_queue.begin(), client_queue.end(),
                                  [ip, port](const element& e) { return e.addr == ip && e.port == port; });

                packet pck_feedback;
                pck_feedback.type = SEND_MSG;
                if (it == client_queue.end()) {
                    snprintf(pck_feedback.data, sizeof(pck_feedback.data), "[ERROR] No such client!");
                } else {
                    snprintf(pck_feedback.data, sizeof(pck_feedback.data), "[INFO] Message sent successfully!");

                    // Forward the message to the target client
                    packet pck_forward;
                    pck_forward.type = RECEIVE_MSG;
                    strncpy(pck_forward.data, data.c_str(), sizeof(pck_forward.data) - 1);

                    if (send(it->socket_id, &pck_forward, sizeof(pck_forward), 0) < 0) {
                        cout << "[ERROR] Failed to forward message to client" << endl;
                    } else {
                        cout << "Message forwarded to client " << it->socket_id << endl;
                    }
                }

                // Send feedback message to the source client
                if (send(client_fd, &pck_feedback, sizeof(pck_feedback), 0) < 0) {
                    cout << "[ERROR] Failed to send feedback message to source client" << endl;
                }
                break;
            }
        }

        memset(&pck, 0, sizeof(pck));
    }
}

void server::run() {
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = htonl(INADDR_ANY);
    addr.sin_port = htons(PORT);

    if (::bind(server_fd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
        perror("[ERROR] Bind failed");
        exit(EXIT_FAILURE);
    }

    if (listen(server_fd, QUEUE_LENGTH) < 0) {
        perror("[ERROR] Listen failed");
        exit(EXIT_FAILURE);
    }

    cout << "Server is listening..." << endl;

    while (true) {
        sockaddr_in client_addr;
        socklen_t client_addr_len = sizeof(client_addr);

        cout << "Waiting for connection..." << endl;

        int client_fd = accept(server_fd, (struct sockaddr *)&client_addr, &client_addr_len);
        if (client_fd < 0) {
            perror("[ERROR] Accept failed");
            continue;
        }

        element client_info;
        client_info.socket_id = client_fd;
        client_info.addr = inet_ntoa(client_addr.sin_addr);
        client_info.port = ntohs(client_addr.sin_port);
        client_queue.push_back(client_info);

        cout << "Connected from " + client_info.addr + ":" + to_string(client_info.port) << endl;

        // Create a thread to handle the client
        thread client_thread(handle_client, client_fd);
        client_thread.detach();  // Detach the thread to allow independent execution
    }
}

int main() {
    server sev;
    sev.run();
    return 0;
}
