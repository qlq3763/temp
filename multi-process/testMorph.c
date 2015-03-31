#include <stdio.h>

#include "morph.h"

int main() {
    /* char *number = "1535068679"; */
    char *number = "39821";
    int status = Morph(number);

    printf("should never reach here: %d\n", status);

    return 0;
}
