#include <iostream>
using namespace std;
#define MAX 100

/*
NAMA    :   DZIKRA FATHIN
KELAS   :   D4RPL1B
NIM     :   1805039
*/

struct inventory {
    string nama;
    string merk;
    string tipe;
    int stok;
    int price;
    bool tersedia() {
        if (stok > 0) {
            return true;
        } else {
            return false;
        }
    }
};
/*
===============================
BARANG 1                       
===============================
NAMA     |                        
------------------------------- 
MERK     |
-------------------------------
TIPE     |
-------------------------------
STOK     |
-------------------------------
TERSEDIA |
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

*/
void add_data(inventory arr[]) {
    int indx;
    for (int i=0;i<MAX;i++) {
        if (arr[i].nama == "") {
            indx = i;
        }
    }
    cout << "Masukan nama barang : ";
    cin >> arr[indx].nama;
    cout << "Masukan merk barang : ";
    cin >> arr[indx].merk;
    cout << "Masukan tipe barang : ";
    cin >> arr[indx].tipe;
    cout << "Masukan stok barang : ";
    cin >> arr[indx].stok;
    cout << "Masukan harga barang : ";
    cin >> arr[indx].price;
}

void print_data(inventory arr[]) {
    for (int i=0;i<MAX;i++) {
        if (arr[i].nama == "") {
            break;
        }
        string av = arr[i].tersedia() ? "YA" : "TIDAK";
        cout << "===============================\nBARANG " << i+1 <<"\n===============================\n";
        cout << "NAMA     | " << arr[i].nama << "\n-------------------------------\n";
        cout << "MERK     | " << arr[i].merk << "\n-------------------------------\n";
        cout << "TIPE     | " << arr[i].tipe << "\n-------------------------------\n";
        cout << "STOK     | " << arr[i].stok << "\n-------------------------------\n";
        cout << "HARGA    | Rp. " << arr[i].price << "\n-------------------------------\n";
        cout << "TERSEDIA | " << av << "\n-------------------------------\n";
        cout << "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n";
    }
}

void del_data(inventory arr[]) {
    int del;
    cout << "Masukan nomor data mana yang ingin dihapus : ";
    cin >> del;
    del--;
    for (int i=del;i<MAX;i++) {
        arr[i] = arr[i+1];
    }
}

void edit_data(inventory arr[]) {
    int sel, prop;
    bool flag = true;
    cout << "Nomor urut data yang ingin diedit : ";
    cin >> sel;
    x:cout << "Pilih yang ingin diedit : " << endl;
    cout <<  "1.NAMA\n2.MERK\n3.TIPE\n4.STOK\n5.HARGA\n6.Semua\n";
    if (prop == 6) {
        flag = false;
        prop = 1;
    }
    switch(prop) {
        case 1:
            cout << "Masukan nama baru : ";
            getline(cin, arr[sel].nama);
            if (flag) {break;}
        case 2:
            
            cout << "Masukan merk baru : ";
            getline(cin, arr[sel].merk);
            cin.ignore();
            if (flag) {break;}
        case 3:
            
            cout << "Masukan tipe baru : ";
            getline(cin, arr[sel].tipe);
            cin.ignore();
            if (flag) {break;}
        case 4:
            
            cout << "Masukan stok baru : ";
            cin >> arr[sel].stok;
            cin.ignore();
            if (flag) {break;}
        case 5:
            
            cout << "Masukan harga baru : ";
            cin >> arr[sel].price;
            cin.ignore();
            if (flag) {break;}
    }
    cout << "Ingin mengedit lagi ? 1.ya 2. tidak: ";
    cin >> prop;
    if (prop == 1) {
        goto x;
    }
}

void show_menu(inventory arr[]) {
    int sel;
    x:cout << "1.Tampilkan data\n2.Tambah data\n3.Edit Data\n4.Hapus data\n";
    cout << "Pilih salah satu : ";
    cin >> sel;
    switch(sel) {
        case 1:
            print_data(arr);
            break;
        case 2:
            add_data(arr);
            break;
        case 3:
            edit_data(arr);
            break;
        case 4:
            del_data(arr);
            break;
    }
    goto x;
}

int main()
{
    inventory barang[MAX] = {
        {
            "Laptop",
            "ASUS",
            "X455LF",
            5,
            5000000
        },
        {
            "PC Rakitan",
            "GIGABYTE",
            "H61M-S2P-R3",
            4,
            4500000
        }
    };
    show_menu(barang);
}