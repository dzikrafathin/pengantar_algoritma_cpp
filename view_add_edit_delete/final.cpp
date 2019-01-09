#include <iostream>
using namespace std;
#define MAX 100


int min_data(int arr[], int n) {
    int min = arr[0];
    for (int i=0;i<n;i++){
        if (min > arr[i])
            min = arr[i];
    }
    return min;
}

int max_data(int arr[], int n) {
    int max = arr[0];
    for (int i=0;i<n;i++){
        if (max < arr[i])
            max = arr[i];
    }
    return max;
}

int sum_data(int arr[], int n) {
    int jumlah;
    for (int b=0; b<n; b++){
        jumlah = jumlah + arr[b];
    }
    return jumlah;
}

void add_data(int arr[], int n) {
    int data;
    cout << "Masukan data baru : ";
    cin >> data;
    for (int i=0;i<n;i++) {
        if (arr[i] == 0) {
            arr[i] = data;
            break;
        }
    }
}

void del_data(int arr[], int n) {
    int hapus;
    cout << "Masukan slot data yang ingin dihapus : ";
    cin >> hapus;
    for (int h=hapus-1;h<n-1;h++)
    {
        arr[h]=arr[h+1];
    }
}

float average_data(int arr[], int n) {
    int  jml = 0, x=0;
    for (int i=0;i<n;i++) {
        if (arr[i] != 0) {
            x++;
            jml += (float)arr[i];
        } else {
            break;
        }
    }
    return (float)jml/(float)x;
}

void view_data(int arr[], int n) {
    int bm;
    cout << "=======================\nSLOT     || ISI DATA\n=======================\n";
    for (int i=0;i<n;i++) {
        if (arr[i] != 0) {
            cout <<" "<<i<<"       ||  "<<arr[i]<<"\n-----------------------\n";
        } else if (arr[i] == 0) {
            cout <<" "<<i<<"-"<<n<<"   ||  EMPTY\n-----------------------\n";
            bm = i-1;
            break;
        }
    }
    cout << "\n=======================\n";
    cout << "Jumlah data : " << sum_data(arr, bm) << endl;
    cout << "Rata-rata data : " << average_data(arr, n) << endl;
    cout << "Nilai terkecil : " << min_data(arr, bm) << endl;
    cout << "Nilai terbesar : " << max_data(arr, bm) << endl;
    cout << "\n=======================\n";
}

void edit_data(int arr[], int n) {
    int index,val;
    bool find = false;
    view_data(arr,n);
    cout << "Masukkan data yang akan diubah : ";
    cin >> val;
    for(int i=0;i<n;i++){
        if(arr[i] == val){
            index = i;
            find = true;
            break;
        }
    }
    if (find) {
        cout << "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"<<endl;
        cout << "Data dengan nilai "<< val <<" di index ke-"<<index<<"\n";
        cout << "Masukkan data yang baru : ";
        cin >> arr[index];
        cout << "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"<<endl;
        cout << "DATA BARU : " << endl;
        view_data(arr,n);
    } else {
        cout << "Data tidak ada didalam daftar!" << endl;
    }
}

void show_menu(int * pilih) {
    string menu[4] = {
        "Tambah",
        "Edit",
        "Hapus",
        "Tampilkan",
    };
    cout << "============= Managemen Data =============\n";
    cout << "\nPilih aksi yang ingin dilakukan : \n";
    for (int i=0;i<4;i++) {
        cout << endl << i+1 << ". " << menu[i] << " data.";
    }
    cout << "\n===========================================\n";
    cout << "Pilihan anda (angka) : ";
    cin >> *pilih;
}

int main() {
    int p;
    //ARRAY DATA
    /*
1. Buat array bilangan
2. Buat proses tambah data bilangan kedalam array tersebut



6. Tampilkan bilangan terbesar

8. Tampilkan jumlah total bilangan  dari elemen array yang sudah terisi

    */
    int data[MAX] = {9,2,6,7,4,10,12,16,18};
    //view_data(data, MAX);
    awal:
    show_menu(&p);
    switch(p) {
        case 1:
            add_data(data, MAX);
            break;
        case 2:
            edit_data(data, MAX);
            break;
        case 3:
            del_data(data, MAX);
            break;
        case 4:
            view_data(data, MAX);
            break;
    }
    goto awal;
}