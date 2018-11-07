#include <iostream>
using namespace std;

int main()
{
    char text1[10] = "ABCDEFGHI";
    int i = 0;
    while (text1[i] != '\0') {
        cout << text1[i] << endl;
        i++;
    }
    return 0;
}