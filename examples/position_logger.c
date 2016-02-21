#include <stdio.h>
#include <stdlib.h>
#include <gps.h>

int main(void) {
    // Open
    gps_init();

    loc_t data;

    printf("Waiting for GPS lock...\n");
    while (1) {
        gps_location(&data);

        printf("Lat: %lf Lon: %lf\n", data.latitude, data.longitude);
    }

    return EXIT_SUCCESS;
}

