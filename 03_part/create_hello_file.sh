function createHelloCGI {
    echo "#include <fcgi_stdio.h>
#include <stdio.h>

int main(void) {
    int count = 0;
    while(FCGI_Accept() >= 0)
        printf(\"Content-type: text/html\r\nStatus: 200 OK\r\n\r\nHello World!\");
    return 0;
}" > hello_cgi.c
}

createHelloCGI