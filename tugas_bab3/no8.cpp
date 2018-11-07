#include <iostream>
using namespace std;

int main() 
{
    int res, i, x;
    cout << "Nilai batas bawah : ";
    cin >> i;
    cout << "Nilai batas atas : ";
    cin >> x;
    while (i<=x) {
        res = (i % 2 == 0) ? i : 0;
        i++;
        if (res == 0) {
            continue;
        }
        cout << res << endl;
    }
}