#include <iostream>
#include <string>
using namespace std;

struct pt {
    string nama_pt;
    string berdiri;
    char akreditasi;
    bool pt_negri;
    int jml_jurusan;
};

int main()
{
    const int num_pt = 5;
    pt daftar_pt[num_pt];
    for (int i=0;i<num_pt;i++) {
        string input;
        cout << "Nama PT : ";
        cin >> daftar_pt[i].nama_pt;
        cout << "Tanggal Berdiri : ";
        cin >> daftar_pt[i].berdiri;
        cout << "Negri? ya/tidak : ";
        cin >> input;
        if (input == "ya") {
            daftar_pt[i].pt_negri = true;
        } else if (input == "tidak") {
            daftar_pt[i].pt_negri = false;
        }
        cout << "Jumlah jurusan : ";
        cin >> daftar_pt[i].jml_jurusan;
    }
    return 0;
}
