#include <iostream>
using namespace std;

int main()
{
    string txt;
    cout << "Masukan Kata : ";
    cin >> txt;
    cout << "\n\n";
    int len = txt.length();
    for (int i=0;i<len;i++) {
        for (int j=i;j<len;j++) {
            cout << txt[j] << " ";
        }
        cout << endl;
    }
    return 0;
}
/*
t
tu
tul
tuli
tulis
*/