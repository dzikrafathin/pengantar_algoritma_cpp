#include <iostream>
using namespace std;

/*
    Nama : Dzikra Fathin
    Kelas : D4RPL1B
    NIM : 1805039
*/

void sh_data(int arr[], int n) {
    //Menggunakan perulangan untuk menampilkan semua elemen yang ada didalam array
    for (int i=0;i<n;i++) {
        if (arr[i] != -1)
          cout << "Data ke [" << i << "] = " << arr[i] << endl;
    }
}

//fungsi untuk mencari lokasi angka terbesar pada array
int findMax(int arr[], int n) {
    //asusmsi pertama pada elemen array ke 1
    int posMax = 0;
    for (int i=0;i<n;i++) {
        //jika ada elemen array yang lebih besar dari asumsi 
        //pertama maka elemen array tersebut menjadi nilai yang terbesar
        if (arr[i] > arr[posMax]) {
            posMax = i;
        }
    }
    //posisi elemen yang baru setelah elemen array terbesar
    return posMax+1;
}

//fungsi untuk mencari posisi ujung dari array
int findUjung(int arr[], int n) {
    int posUjung = 0;
    for (int i=0;i<n;i++) {
        if (arr[i] == -1) {

            posUjung = i-1;
        }
    }
    return posUjung;
}

void add_data(int arr[], int n) {
    awal:int newData,x;
    //inisialisasi posisi angka maksimal dengan ujung array
    int dPos = findMax(arr, n);
    int ujung = findUjung(arr, n);
    //tampilkan data
    sh_data(arr,n);
    //geser terlebih dahulu dari ujung kanan untuk menyediakan tempat untuk data baru
    for (int i=ujung;i>=dPos;i--) {
        arr[i+1] = arr[i];
    }
    // menerima inputan dari user
    cout << "Masukan data baru : ";
    cin >> newData;
    // masukan data baru pada posisi yang disediakan
    arr[dPos] = newData;
    sh_data(arr,n);
    cout << "Ulangi lagi ? 1.ya 2.tidak : ";
    cin >> x;
    if (x == 1) {
        goto awal;
    }
}

int main() {
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
    add_data(data,12);
}