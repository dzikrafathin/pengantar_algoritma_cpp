#include <iostream>
#include <iomanip>
#include <cstring>
using namespace std;

void center_text(char str[], char fill) {
    int size = strlen(str);
    int w = (70/2)+(size/2);
    cout    << setfill(fill) << setw(w) << str 
            << setfill(fill) << setw(70-w) << "\n";
}

int main(int argc, char const *argv[])
{
    cout << setfill('-') << setw(70) << "\n";
    center_text("[ TULISAN TENGAH TENGAH ]", '-');
    return 0;
}
