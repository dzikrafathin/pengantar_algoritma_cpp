#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    int input1,num;
    cout << "THE NUMBER IS : ";
    cin >> input1;
    for (int i=1;i<=input1;i++) {
        for (int j=i;j>=1;j--) {
            if (num >= 10) {
                num = 0;
            }
            cout << num;
            num++;
        }
        cout << endl;
    }
    return 0;
}
