#include "client.h"
#include "def.h"
using namespace std; 

// Thread function, run the receive process
void thread_func(int sockfd) {
    packet pck; 

    // Create the message queue to achieve inter-process communication 
    key_t key = ftok(filepath, 5); 
    int msg_id = msgget(key, IPC_CREAT | 0666); 
    if (msg_id < 0) {
        perror("[ERROR] fail to create the message queue!!!");
        return;
    }

    // Receive the response message 
    recv(sockfd, &pck.data, sizeof(pck.data), 0); 
    cout << "received message: " << pck.data << endl;

    while (true) { 
        memset(&pck, 0, sizeof(pck)); 

        // Receive the request from server  
        if (recv(sockfd, &pck, sizeof(pck), 0) < 0) {
            perror("[ERROR] fail to receive the message!!!");
            continue;
        }

        // Print the message if the message type is RECEIVE_MSG 
        if (pck.type == RECEIVE_MSG) {
            cout << "received message: " << pck.data << endl; 
            continue; 
        }

        // Send the message to main process
        msgsnd(msg_id, &pck, MAXLEN, 0); 
    }
}


client::client() { 
    // Create a socket handler 
    if ((client_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        perror("[ERROR] socket failed");
        exit(EXIT_FAILURE);
    }

    // Clear sockaddr_in 
    memset(&addr, 0, sizeof(addr)); 

    // Create the message queue to achieve inter-process communication 
    key_t key = ftok(filepath, 5); 
    msg_id = msgget(key, IPC_CREAT | 0666); 
    if (msg_id < 0) {
        perror("[ERROR] fail to create the message queue!!!");
        return;
    } 
    
    // Filter the remaining messages 
    packet pck; 
    while (msgrcv(msg_id, &pck, MAXLEN, 0, IPC_NOWAIT) > 0);
}

client::~client() {
    if (client_fd != -1) {
        close(client_fd);
    }
}

int client::fetch_operation() {
    int op = 0; 

    // Print the menu 
    cout << "---------------------------------------" << endl; 
    cout << "|Please enter your requirement:       |" << endl; 
    cout << "|1. Connect to the client.            |" << endl; 
    cout << "|2. Remove connection.                |" << endl; 
    cout << "|3. Get time.                         |" << endl; 
    cout << "|4. Get server name.                  |" << endl; 
    cout << "|5. List all active clients.             |" << endl; 
    cout << "|6. Send message to another client.   |" << endl; 
    cout << "|7. Exit.                             |" << endl;
    cout << "---------------------------------------" << endl;  

    // Fetch the operation 
    cin >> op; 
    return op; 
}

void client::run() {
    while (true) {
        // Fetch the operation 
        int op = fetch_operation(); 

        // If no operation is fetched, then continue 
        if (op == 0) continue;

        // Handle different operations 
        switch (op) {
            case 1: server_connect(); break;
            case 2: remove_connection(); break;
            case 3: get_time(); break;
            case 4: get_name(); break;
            case 5: get_client_list(); break;
            case 6: send_message(); break;
            case 7: quit(); break;
            default:
                cout << "[ERROR] Please enter the valid operation!!!" << endl; 
                break;
        }
    }
}

void client::server_connect() { 
    string ip;
    int port; 

    // If the connection already exist 
    if (connection_state) {
        perror("[ERROR] connection already exists!!!");
        return;
    }

    // Fetch the ip and port 
    cout << "Please enter the IP address: "; 
    cin >> ip; 
    cout << "Please enter the port: "; 
    cin >> port; 

    // Ready for connection 
    addr.sin_family = AF_INET; 
    addr.sin_port = htons(port); 
    addr.sin_addr.s_addr = inet_addr(ip.c_str()); 

    // Connect to the target server 
    if (connect(client_fd, (sockaddr*)&addr, sizeof(addr)) < 0) {
        perror("[ERROR] failed to connect!!!");
        return; 
    }

    // Create a new thread
    thr = thread(thread_func, client_fd);

    // Change connection state to true, and print the success message 
    connection_state = true; 
    cout << "[INFO] connection successful!!!" << endl; 
}

void client::remove_connection() {
    if (!connection_state) {
        perror("[ERROR] no connection!!!"); 
        return; 
    }

    // Compile the REMOVE_CONNECT request 
    char data = REMOVE_CONNECT; 
    if (send(client_fd, &data, sizeof(data), 0) < 0) { 
        perror("[ERROR] failed to remove connection!!!"); 
        return; 
    }

    // Cancel the thread process 
    thr.detach(); 

    // Switch the connection state to false 
    connection_state = false; 
    cout << "[INFO] removed connection successfully!!!" << endl; 
}

void client::get_time() {
    if (!connection_state) {
        perror("[ERROR] no such connection!!!");
        return; 
    }

    char data = GET_TIME; 
    if (send(client_fd, &data, sizeof(data), 0) < 0) {
        perror("[ERROR] failed to send the request for time!!!");
        return; 
    }

    packet pck; 
    if (msgrcv(msg_id, &pck, MAXLEN, (long)GET_TIME, 0) < 0) {
        perror("[ERROR] failed to receive the time data!!!"); 
        return; 
    }

    // Process the received time string
    time_t t; 
    sscanf(pck.data, "%ld", &t); 
    cout << "Server time: " << ctime(&t) << endl; 
}

void client::get_name() {
    if (!connection_state) {
        perror("[ERROR] no such connection!!!");
        return; 
    }

    char data = GET_NAME; 
    if (send(client_fd, &data, sizeof(data), 0) < 0) {
        perror("[ERROR] failed to send the request for name!!!");
        return; 
    }

    packet pck; 
    if (msgrcv(msg_id, &pck, MAXLEN, (long)GET_NAME, 0) < 0) {
        perror("[ERROR] failed to receive the name data!!!"); 
        return; 
    }

    cout << "Server name: ";
    puts(pck.data); 
}

void client::get_client_list() {
    if (!connection_state) {
        perror("[ERROR] no such connection!!!");
        return; 
    }

    char data = GET_LIST; 
    if (send(client_fd, &data, sizeof(data), 0) < 0) {
        perror("[ERROR] failed to send the request for client list!!!");
        return; 
    }

    packet pck; 
    if (msgrcv(msg_id, &pck, MAXLEN, (long)GET_LIST, 0) < 0) {
        perror("[ERROR] failed to receive the client list!!!"); 
        return; 
    }

    cout << "Client list: " << endl; 
    puts(pck.data); 
}

void client::send_message() {
    if (!connection_state) {
        perror("[ERROR] no such connection!!!");
        return; 
    }

    packet pck; 
    pck.type = SEND_MSG; 
    string ip;
    int port; 

    cout << "Please enter the target IP address: "; 
    cin >> ip; 
    cout << "Please enter the port: "; 
    cin >> port; 
    sprintf(pck.data, "%s:%d,", ip.c_str(), port); 

    char msg[MAXLEN - 30]; 
    cout << "Please enter the message content: "; 
    cin >> msg; 
    sprintf(pck.data + strlen(pck.data), "%s", msg); 

    if (send(client_fd, &pck, sizeof(pck), 0) < 0) {
        perror("[ERROR] failed to send message to other client!!!"); 
        return; 
    }

    memset(&pck, 0, sizeof(pck));
    if (msgrcv(msg_id, &pck, MAXLEN, (long)SEND_MSG, 0) < 0) {
        perror("[ERROR] failed to receive the response!!!"); 
        return; 
    }

    cout << "Server response: ";
    puts(pck.data); 
}

void client::quit() {
    if (connection_state) {
        char data = REMOVE_CONNECT; 
        if (send(client_fd, &data, sizeof(data), 0) < 0) {
            perror("[ERROR] failed to send quit request!!!"); 
            return; 
        }
    }
    exit(0); 
}

int main() { 
    client cli; 
    cli.run(); 
    return 0; 
}
