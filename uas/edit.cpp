#include <iostream>
using namespace std;

/*
Nama    :   Dzikra Fathin
Kelas   :   D4RPL1B
NIM     :   1805039
*/

// Prosedur untuk menampilkan semua data pada array
void sh_data(int arr[], int n) {
    //Menggunakan perulangan untuk menampilkan semua elemen yang ada didalam array
    for (int i=0;i<n;i++) {
        if (arr[i] != -1)
          cout << "Data ke [" << i << "] = " << arr[i] << endl;
    }
}
// Prosedur untuk mengedit data
void edit_data(int arr[], int n) {
    //Inisialisasi variabel indx = index data yg ingin diganti
    // newData = data baru
    int indx, newData;
    //Pertama tampilkan data
    sh_data(arr,n);
    cout << "Data keberapa yang ingin diganti ? : ";
    //Menerima input dari user index data yg diganti
    cin >> indx;
    cout << "Masukan data baru : ";
    //Menerima input data baru dari user
    cin >> newData;
    //Menggati data lama dengan data baru
    arr[indx] = newData;
    //Tampilkan kembali datanya
    cout << "Data baru adalah : " << endl;
    sh_data(arr,n);
}

int main()
{
    int data[12];
    //Sepakati untuk slot kosong dengan -1
    for (int i=0;i<12;i++) {
        data[i] = -1;
    }
    //kemudian isi data
    data[0] = 1;
    data[1] = 8;
    data[2] = 0;
    data[3] = 5;
    data[4] = 0;
    data[5] = 3;
    data[6] = 9;
    //memanggil prosedur edit data
    edit_data(data,12);
}
