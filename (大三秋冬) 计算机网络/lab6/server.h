#include "def.h" 
using namespace std; 


struct element{
    int socket_id; 
    string addr; 
    int port; 
};
vector <struct element> client_queue; 


class server {
private:
    int server_fd; 
    struct sockaddr_in addr;

public:
    server();
    ~server();
    void run(); 
};