#include <fstream>
#include <iostream>
#include <cstring>

using namespace std;

struct newdat {
    string nama,merk,tipe;
    int stok,harga;
};

void sh_data(newdat arr[]) {
    for (int i=0;i<10;i++) {
        if (arr[i].nama.empty() && arr[i].merk.empty()) {
            break;
        }
        cout << "Nama : " << arr[i].nama << endl;
        cout << "Merk : " << arr[i].merk << endl;
        cout << "Tipe : " << arr[i].tipe << endl;
        cout << "Stok : " << arr[i].stok << endl;
        cout << "Harga : " << arr[i].harga << endl;
        cout << "\n\n";
    }
}

void fetch_data(inv arr[]) {
    ofstream wr("data2.txt");
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
    wr.close;
}

int main() {
    newdat list[10];
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
   // int stok,harga;
   /* int i=0;
    int j=0;
    while(!read.eof()) {
        switch(i) {
            case 0:
               getline(read,list[j].nama,'|');
               break;
            case 1:
               getline(read,list[j].merk,'|');
               break;
            case 2:
               getline(read,list[j].tipe,'|');
               break;
            case 3:i++;
               getline(read,list[j].stok,'|');
               break;
            case 4:
               getline(read,list[j].harga,'\n');
               break;
        }
        
        if (i==4) {
            i=0;
            j++;
        }
        i++;
    }*/
    sh_data(list);
    fetch_data(list);
} 