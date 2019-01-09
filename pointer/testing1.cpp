#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    char txt1[10] = "abcdefghi";
    char * txt1_p;
    txt1_p = &txt1[0];
    cout << *txt1_p;
}
