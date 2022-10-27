#include <p24Fxxxx.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "AES.h"
char key[16] = {0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x10,0x11,0x12,0x13,0x14,0x15};
#define KEY_SIZE 16
#define CRYPTO_BLOCK_SIZE 16
/*
const char encryptedMessage[64] = {
    0x73, 0x19, 0x64, 0x3B, 0x98, 0xC8, 0x05, 0x3B, 0x3F, 0xD1, 0xCE, 0xDD, 0xBA, 0x2A, 0xCB, 0xFF,
    0xAE, 0x5E, 0xBC, 0xD6, 0xD3, 0x4C, 0x65, 0xFF, 0xFB, 0xA6, 0x2B, 0x13, 0x8C, 0x3E, 0x04, 0xAC,
    0x06, 0x74, 0xBF, 0x5D, 0xC5, 0xD1, 0x4A, 0x28, 0x29, 0xCD, 0xD6, 0xC9, 0x20, 0xDB, 0xA9, 0xE0,
    0xF2, 0x0B, 0xCA, 0x5E, 0x6A, 0x1C, 0x56, 0x1D, 0xB9, 0xE7, 0x28, 0xCB, 0xE8, 0x87, 0xB3, 0x61};
 */
const char encryptedMessage[64] = {
0x73,0x19,0x64,0x3B,0x98,0xC8,0x05,0x3B,0x3F,0xD1,0xCE,0xDD,0xBA,0x2A,0xCB,0xFF,
0xB4,0x5F,0xA8,0xC9,0xD2,0xB4,0x76,0x0B,0x66,0x2D,0xF0,0x0C,0xD6,0xA8,0x2D,0xCB,
0xF7,0x0C,0xC6,0x7A,0x21,0x0C,0xD5,0x6D,0xA7,0x0D,0x6B,0x4F,0x89,0x7B,0xBA,0xC9,
0xAE,0xC4,0x02,0xE8,0x75,0xCA,0x3B,0x89,0x82,0xC6,0x46,0xDB,0x20,0xCA,0xFB,0x37};


void printBlock(char* block) {

    for (int i = 0; i < CRYPTO_BLOCK_SIZE; i++) {
        printf("%c", *(block + i));
    }
}
void printKey(char* key) {

    for (int i = 0; i < CRYPTO_BLOCK_SIZE; i++) {
        printf("%02x,", *(key + i));
    }
}

void printDecodingResult(void) {
    char block[CRYPTO_BLOCK_SIZE];
    char key_temp[16];
    //int key[8] = {0x0100, 0x0302, 0x0504, 0x0706, 0x0908, 0x0B0A, 0x0D0C, 0x0F0E};

    //	AESEncrypt((int*)block, key);
    
    AESCalcDecKey((int*)key);
    printf("\r\nDecoded message:\r\n");
    for (int i = 0; i<sizeof (encryptedMessage); i += CRYPTO_BLOCK_SIZE) {
        memcpy(block, (encryptedMessage + i), CRYPTO_BLOCK_SIZE);
        AESDecrypt((int*) block, (int*)key);
        printBlock(block);
    }



}