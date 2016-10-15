#include <stdio.h> 

int main(int argc, char* argv[]) {
    unsigned int a = 0x9908B0DF;
    unsigned int d = 0xFFFFFFFF;
    unsigned int b = 0x9D2C5680;
    unsigned int c = 0xEFC60000;

    printf("a: 0x%.8X -> %d\n", a, (int)a);
    printf("d: 0x%.8X -> %d\n", d, (int)d);
    printf("b: 0x%.8X -> %d\n", b, (int)b);
    printf("c: 0x%.8X -> %d\n", c, (int)c);

    printf("one: 0x%.8X -> %d\n", 0x1, (int)0x1); 

    return 0;
}
