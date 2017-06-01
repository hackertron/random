#include <stdio.h>
#include <stdlib.h>

unsigned long largest_prime_factor(unsigned long n) {
    unsigned long   largest_factor = 1;
    unsigned long   p = 3;
    unsigned long   div = n;

    /* remove any factors of 2 first */
    while (div % 2 == 0) {
        largest_factor = 2;
        div = div/2;
    }

    /* now look at odd factors */
    while (div != 1) {
        while (div % p == 0) {
            largest_factor = p;
            div = div/p;
        }
        p = p + 2;
    }

    return largest_factor;
}

int main(int argc, char **argv) {
    unsigned long   factor;
    unsigned long   max = 100000;
    unsigned long   i = 1;

    while (i <= max) {
        factor = largest_prime_factor(806515533049393);
        i++;
    }
    printf("%ld\n", factor);

    return 0;
}
