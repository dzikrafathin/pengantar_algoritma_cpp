#include <iostream>
using namespace std;

int findMax(int list[]);
int jml;

int main(int argc, char const *argv[])
{
    cout << "Jumlah angka yang dimasukan : ";
    cin >> jml;
    int daftar[jml];
    for (int i=0;i<jml;i++) {
        cout << "Masukan nilai ke " << i << ": ";
        cin >> daftar[i];
    }
    cout << "Nilai terbesar adalah : " << findMax(daftar) << endl;
}

int findMax(int list[]) {
    int max = list[0];
    for (int i=0;i<jml;i++) {
        if (max < list[i]) {
            max = list[i];
        }
    }
    return max;
}