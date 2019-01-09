#include <iostream>
using namespace std;

/*
Nama    : Dzikra Fathin
Kelas   : D4RPL1B
NIM     : 1805039
*/

//Prosedur menampilkan data
void sh_data(int arr[], int n) {
    //Menggunakan perulangan untuk menampilkan semua elemen yang ada didalam array
    for (int i=0;i<n;i++) {
        //hanya tampilkan elemen array yang isinya bukan -1
        if (arr[i] != -1)
           cout << "Data ke [" << i << "] = " << arr[i] << endl;
    }
}

void del_data(int arr[], int n) {
    int indx_del;
    //tampilkan seluruh data
    sh_data(arr,n);
    cout << "Data yang mana yang ingin dihapus : ";
    //menerima input index data yang ingin dihapus
    cin >> indx_del;
    //hapus seluruh data yang ada pada index tersebut beserta sisa data yang ada didepannya
    for (int i=indx_del;i<n;i++) {
        arr[i] = -1;
    }
    //tampilkan kembali data-datanya
    cout << "Data setelah dihapus : " << endl;
    sh_data(arr,n);
}

int main(int argc, char const *argv[])
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
    //panggil prosedur hapus data
    del_data(data, 12);
    return 0;
}
