#include <syslog.h>
#include <stdio.h>

int main(int argc, char const *argv[]) {

    openlog("LOG", LOG_PERROR, LOG_USER);

    if (argc != 3) {
        syslog(LOG_ERR, "Usage: writer </path/to/file> <text>");
        return 1;
    }

    const char * path = argv[1];
    const char * text = argv[2];

    FILE * file = fopen(path, "w");
    if (file == NULL) {
        syslog(LOG_ERR, "Invalid file");
        return 1;
    }

    syslog(LOG_DEBUG, "Writing %s to %s", text, path);

    fprintf(file, "%s\n", text);
    fclose(file);

    return 0;
}
