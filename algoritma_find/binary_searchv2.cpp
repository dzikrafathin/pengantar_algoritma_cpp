#include <iostream>
using namespace std;

int pencari_biner(int arr[], int akhir, int cari)
{
    /*
        SUMBER KODE = www.geeksforgeeks.org
    */
    int awal = 0;
    while (awal <= akhir) {
        int tengah = awal + (akhir-awal)/2;

        if (arr[tengah] == cari) {
            return tengah;
        }

        if (arr[tengah] < cari) {
            awal = tengah + 1;
        } else {
            akhir = tengah - 1;
        }
    }
    return 0;
}

void showArray(int arr[], int n) {
    cout << "[";
    for (int i=0;i<n;i++) {
        cout << arr[i] << " ";
    }
    cout << "]";
    cout << endl;
}

int main(int argc, char const *argv[])
{
    int cari;
    int A[10] = {1,6,9,11,13,15,16,22,25,27};
    cout << "Daftar angka" << endl;
    showArray(A, 10);
    cout << "Masukan angka yang ingin dicari : ";
    cin >> cari;
    int hasil = pencari_biner(A, 9, cari);
    if (!hasil) {
        cout << "Hasil tidak ditemukan" << endl;
    } else {
        cout << "Angka yang dicari ada pada index ke " << hasil << endl;
    }
}

