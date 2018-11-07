#include <iostream>
using namespace std;

int main()
{
    int find, pos;
    bool flag = false;
    int A[6] = {4,5,9,1,2,7};
    cout << "Masukan angka yang ingin dicari : ";
    cin >> find;
    for (int i=0;i<6;i++) {
        if (A[i] == find) {
            flag = true;
            pos = i;
            break;
        }
    }
    if (flag) {
        cout << "Ketemu pada index ke : " << pos << endl;
    } else {
        cout << "404 NOT FOUND" << endl;
    }
    return 0;
}
