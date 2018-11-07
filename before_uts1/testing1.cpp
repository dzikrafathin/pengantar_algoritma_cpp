#include <iostream>
using namespace std;

int main()
{
    int num1, num2;
    cout << "Angka 1 adalah : ";
    cin >> num1;
    cout << "Angka 2 adalah : ";
    cin >> num2;
    for (int i=1;i<=num1;i++) {
        if (i % num2 == 0) {
            cout << "* ";
            continue;
        }
        cout << i << " ";
    }
    return 0;
}
