#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

#define BASE_ADDRESS 0x40000000

int main() {
    int fd;
    unsigned int key[4] = {0x01234567, 0x89ABCDEF, 0x01234567, 0x89ABCDEF};
    unsigned int nonce[4] = {0x01234567, 0x89ABCDEF, 0x01234567, 0x89ABCDEF};
    unsigned int plaintext[4] = {0x01234567, 0x89ABCDEF, 0x01234567, 0x89ABCDEF};
    unsigned int ciphertext[4];

    // Open the memory device for register access
    fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd == -1) {
        perror("Failed to open /dev/mem");
        return -1;
    }

    // Write key, nonce, and plaintext to the IP registers
    for (int i = 0; i < 4; i++) {
        *((volatile unsigned int *)(BASE_ADDRESS + i * 4)) = key[i];
        *((volatile unsigned int *)(BASE_ADDRESS + (i + 4) * 4)) = nonce[i];
        *((volatile unsigned int *)(BASE_ADDRESS + (i + 6) * 4)) = plaintext[i];
    }

    // Enable the IP core by setting the M15 switch
    *((volatile unsigned int *)(BASE_ADDRESS + 20 * 4)) = 1;

    // Wait for the IP core to finish encryption
    sleep(1);

    // Read the ciphertext from the IP registers
    for (int i = 0; i < 4; i++) {
        ciphertext[i] = *((volatile unsigned int *)(BASE_ADDRESS + (i + 10) * 4));
    }

    // Print the result
    printf("Plaintext:  0x%08X%08X%08X%08X\n",
           plaintext[3], plaintext[2], plaintext[1], plaintext[0]);
    printf("Ciphertext: 0x%08X%08X%08X%08X\n",
           ciphertext[3], ciphertext[2], ciphertext[1], ciphertext[0]);

    // Close the memory device
    close(fd);

    return 0;
}