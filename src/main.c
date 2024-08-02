#include <conio.h>
#include <string.h>

struct messages
{
    char *message;
    int x;
    int y;
};


int main(void)
{
    char message[] = "I will make more";
    char message2[] = "when I feel like it.";
    char message3[] = "ROBOT";
    unsigned int frame = 0;

    clrscr();

    gotoxy((32-strlen(message))/2, 13);
    cprintf(message);
    gotoxy((32-strlen(message2))/2, 14);
    cprintf(message2);
    gotoxy((32-strlen(message3))/2, 16);
    cprintf(message3);

    for (;;)
    {
        gotoxy(0, 0);
        cprintf("Time: %d", frame++);
    }
    

    return 0;
}
