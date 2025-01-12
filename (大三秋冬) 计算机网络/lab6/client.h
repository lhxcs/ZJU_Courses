#ifndef _USER_H_ 
#define _USER_H_ 

#include "def.h"

class client {
private:
    int client_fd, msg_id;
    bool connection_state = false; 
    sockaddr_in addr;  
    std::thread thr; 
    int fetch_operation(); 
    void server_connect();
    void remove_connection();
    void get_time(); 
    void get_name(); 
    void get_client_list(); 
    void send_message(); 
    void quit(); 

public:
    client(); 
    ~client();
    void run(); 
};

#endif 