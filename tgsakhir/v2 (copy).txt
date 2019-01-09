#include <iostream>
#include <iomanip>
#include <cstdlib>
#include <fstream>
using namespace std;
#define MAX 100

struct inv {
    string nama;
    string merk;
    string tipe;
    int stok;
    int harga;
};

int whereEmpty(inv arr[]) {
    int ret;
    for (int i=0;i<MAX;i++) {
        if (arr[i].stok == 0 && arr[i].harga == 0) {
            ret = i;
            break;
        }
    }
    return ret;
}

void export_data(inv arr[]) {
    ofstream wr("data.txt");
    for (int i=0;i<10;i++) {
        if (arr[i].nama.empty() && arr[i].merk.empty()) {
            break;
        }
        wr  << arr[i].nama << "|" 
            << arr[i].merk << "|"
            << arr[i].tipe << "|"
            << arr[i].stok << "|"
            << arr[i].harga << "\n";
    }
    wr.close();
}

void center_text(string str, char fill) {
    int size = str.length();
    int w = (70/2)+(size/2);
    cout    << setfill(fill) << setw(w) << str 
            << setfill(fill) << setw(70-w) << "\n";
}

void print_head(string judul) {
   cout << setfill('-') << setw(70) << "\n";
   center_text("[ PROGRAM PENGELOLAAN DATA BARANG ]", '-');
   center_text(judul, '-');
   cout << setfill('=') << setw(70) << "\n";
}

void fetch_arr_data(inv arr[]) {
    cout    << setfill(' ') <<setw(4) << left << "NO"
            << setw(13) << left << "NAMA"
            << setw(15) << left << "MERK"
            << setw(15) << left << "TIPE"
            << setw(16) << left << "HARGA"
            << setw(5) << left << "STOK" << endl;   
    cout    << setfill('=') << setw(70) << right << "\n";
    for (int i=0;i<MAX;i++) {
        if (arr[i].harga == 0 && arr[i].stok == 0) {
            break;
        }
        cout    << setfill(' ') << setw(4) << left << i+1
                << setw(13) << left << arr[i].nama
                << setw(15) << left << arr[i].merk
                << setw(15) << left << arr[i].tipe
                << setw(3) << left << "Rp." << setw(13) << arr[i].harga
                << setw(5) << left << arr[i].stok << endl;
    }
    cout    << setfill('=') << setw(70) << right << "\n";
}

void sort_data_proc(inv arr[], int sel) {
    inv temp;
    int maks = whereEmpty(arr);
    string sort1, sort2;
    int ascii1, ascii2;
    for (int i=0;i<maks;i++) {
        for (int j=i+1;j<maks;j++) {
            switch (sel) {
                case 1:
                    sort1 = arr[i].nama;
                    sort2 = arr[j].nama;
                    break;
                case 2:
                    sort1 = arr[i].merk;
                    sort2 = arr[j].merk;
                    break;
                case 3:
                    sort1 = arr[i].tipe;
                    sort2 = arr[j].tipe;
                    break;
                case 4:
                    ascii1 = arr[i].stok;
                    ascii2 = arr[j].stok;
                    break;
                case 5:
                    ascii1 = arr[i].harga;
                    ascii2 = arr[j].harga;
                    break;
            }
            int n = 0;
            if (sel == 1 || sel == 2 || sel == 3) {
                while (sort1[n] == sort2[n]) {
                    n++;
                }
                ascii1 = int(sort1[n]);
                ascii2 = int(sort2[n]);
            }
            if (ascii1 > ascii2) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

void sort_data(inv arr[]) {
    int sel;
    cout << "Urutkan berdasarkan : \n\n";
    cout << "[1] Nama\n[2] Merk\n[3] Tipe\n[4] Stok\n[5] Harga\n\n";
    cout << "Masukan pilihan : ";
    cin >> sel;
    sort_data_proc(arr,sel);
    print_head("{ Data setelah diurutkan }");
    fetch_arr_data(arr);
    export_data(arr);
}

void find_data(inv arr[]) {
    int sel,n,nilai,n_nilai;
    string keyword, txt;
    int maks = whereEmpty(arr);
    inv res[maks];
    n = 0;
    print_head("{ Pencarian data }");
    cout << "Pencarian berdasarkan : \n\n";
    cout << "[1] Nama\n[2] Merk\n[3] Tipe\n[4] Harga\n[5] Stok\n\n";
    cout << ">> Pilih salah satu : ";
    cin >> sel;
    if (sel == 1 || sel == 2 || sel == 3) {
        cout << ">> Masukan kata kunci : ";
        cin >> keyword;
    } else {
        cout << ">> Masukan nilai : ";
        cin >> nilai;
    }
    for (int i=0;i<maks;i++) {
        switch(sel) {
            case 1:
                txt = arr[i].nama;
                break;
            case 2:
                txt = arr[i].merk;
                break;
            case 3:
                txt = arr[i].tipe;
                break;
            case 4:
                n_nilai = arr[i].harga;
                break;
            case 5:
                n_nilai = arr[i].stok;
                break;
        }
        if (sel == 1 || sel == 2 || sel == 3) {
            if (keyword.compare(txt) == 0) {
                res[n] = arr[i];
                n++;
            }
        } else {
            if (nilai == n_nilai) {
                res[n] = arr[i];
                n++;
            }
        }
    }
    for (int i=n;i<maks;i++) {
        res[i].stok = 0;
        res[i].harga = 0;
    }
    print_head("{ Hasil pencarian }");
    fetch_arr_data(res);
}

void fetch_all_data(inv arr[]) {
    int sel;
    print_head("{ List semua data }");
    fetch_arr_data(arr);
    cout << "Pilih aksi yang ingin dilakukan : \n\n";
    cout << "[1] Urutkan data\n[2] Cari data\n\n";
    cout << "Masukan pilihan : ";
    cin >> sel;
    switch (sel) {
        case 1:
            sort_data(arr);
            break;
        case 2:
            find_data(arr);
            break;
    }
}

void print_data(inv arr[], int n) {
    cout <<     setfill(' ') << setw(8) << left << "Nama" 
                << setw(3) << left << "|" 
                << setw(59) << left << arr[n].nama << endl
                << setfill('-') << setw(70) << right << "\n" << 
                setfill(' ') << setw(8) << left << "Merk" 
                << setw(3) << left << "|" 
                << setw(59) << left << arr[n].merk << endl
                << setfill('-') << setw(70) << right << "\n" << 
                setfill(' ') << setw(8) << left << "Tipe" 
                << setw(3) << left << "|" 
                << setw(59) << left << arr[n].tipe << endl
                << setfill('-') << setw(70) << right << "\n" <<
                setfill(' ') << setw(8) << left << "Harga" 
                << setw(6) << left << "| Rp." 
                << setw(59) << left << arr[n].harga << endl
                << setfill('-') << setw(70) << right <<"\n" <<
                setfill(' ') << setw(8) << left << "Stok" 
                << setw(3) << left << "|" 
                << setw(59) << left << arr[n].stok << endl
                << setfill('-') << setw(70) << right << "\n";
}

void add_data(inv arr[]) {
    cin.ignore();
    int index = whereEmpty(arr);
    print_head("{ Form tambah data }");
    cout << ">> Masukan nama barang : ";
    getline(cin, arr[index].nama);
    cout << ">> Masukan merk barang : ";
    getline(cin, arr[index].merk);
    cout << ">> Masukan tipe barang : ";
    getline(cin,arr[index].tipe);
    cout << ">> Masukan harga barang : ";
    cin >> arr[index].harga;
    cout << ">> Masukan stok barang : ";
    cin >> arr[index].stok;
    print_head("{ Data baru }");
    print_data(arr, index);
    export_data;
}

void edit_data(inv arr[]) {
    int n, sel;
    bool flag = true;
    print_head("{ Edit data }");
    fetch_arr_data(arr);
    cout << "Pilih nomor urut data yang ingin diedit : ";
    cin >> n;
    n--;
    print_head("{ Data lama }");
    print_data(arr,n);
    cout << "[1] Edit Nama\n[2] Edit Merk\n[3] Edit Tipe\n[4] Harga\n[5] Stok\n[6] Semua\n";
    cout << setw(70) << setfill('-') << "\n";
    cout << "Pilih salah satu : ";
    cin >> sel;
    cout << setw(70) << setfill('-') << "\n";
    if (sel == 6) {
        flag = false;
        sel = 1;
    }
    cin.ignore();
    switch(sel) {
        case 1:
            cout << ">> Masukan nama baru : ";
            getline(cin, arr[n].nama);
            if (flag) {break;}
        case 2:
            cout << ">> Masukan merk baru : ";
            getline(cin, arr[n].merk);
            if (flag) {break;}
        case 3:
            cout << ">> Masukan tipe baru : ";
            getline(cin, arr[n].tipe);
            if (flag) {break;}
        case 4:
            cout << ">> Masukan harga baru : ";
            cin >> arr[n].harga;
            if (flag) {break;}
        case 5:
            cout << ">> Masukan stok baru : ";
            cin >> arr[n].stok;
            if (flag) {break;}
    }
    print_head("{ Data baru }");
    print_data(arr, n);
    export_data(arr);
}

void del_data(inv arr[]) {
    int index;
    print_head("{ Menghapus data }");
    fetch_arr_data(arr);
    cout << "Pilih nomor data yang ingin dihapus : ";
    cin >> index;
    index--;
    int maxs = whereEmpty(arr);
    for (int i=index;i<maxs;i++) {
        arr[i] = arr[i+1];
    } 
    print_head("{ Data setelah dihapus }");
    fetch_arr_data(arr);
    export_data(arr);
}



void sh_menu(inv arr[]) {
    int act;
    print_head("{ Main menu }");
    cout << "1. Tampilkan semua data\n2. Edit data\n3. Hapus data\n4. Tambah data\n";
    cout << setfill('-') << setw(70) << "\n";
    cout << "Pilih aksi yang ingin dilakukan : ";
    cin >> act; 
    switch(act) {
        case 1:
            fetch_all_data(arr);
            break;
        case 2:
            edit_data(arr);
            break;
        case 3:
            del_data(arr);
            break;
        case 4:
            add_data(arr);
            break;
    }
}

void import_data(inv list[]) {
    string txt;
    ifstream read("data.txt");
    int x=0,y=0;
    while (!read.eof()) {
        if ((x+1)%5==0) {
            getline(read,txt,'\n');
            list[y].harga = stoi(txt);
            x=0;
            y++;
        } else {
            getline(read,txt,'|');
            if (x==0) {
                list[y].nama = txt;
            } else if (x==1) {
                list[y].merk = txt;
            } else if (x==2) {
                list[y].tipe = txt;
            } else if (x==3) {
                list[y].stok = stoi(txt);
            }
            x++;
        }   
    }
    read.close();
}

int main()
{
    inv barang[MAX];
    import_data(barang);
    int sel;
    awal:sh_menu(barang);
    cout << ">> Kembali ke menu ? [1] ya [2] tidak : ";
    cin >> sel;
    if (sel == 1) {
        goto awal;
    } 
}