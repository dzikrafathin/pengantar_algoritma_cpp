#include <iostream>
#include <iomanip>
using namespace std;

int main(int argc, char const *argv[])
{
   cout << setfill('-') << setw(70) << "\n";
   cout << setfill(' ') << setw((70/2)+(13/2)) << "DAFTAR BARANG\n";
   cout << setfill('=') << setw(70) << "\n";
   cout << setfill(' ') <<setw(4) << left << "NO"
        << setw(13) << left << "NAMA"
        << setw(15) << left << "MERK"
        << setw(15) << left << "TIPE"
        << setw(16) << left << "HARGA"
        << setw(5) << left << "STOK" << endl;   
   cout << setfill('=') << setw(70) << right << "\n";
}
/*
---------------------------------------------------------------------
                          DAFTAR BARANG
=====================================================================
NO  NAMA         MERK           TIPE           HARGA            STOK    
=====================================================================       
1   LAPTOP       ASUS           A455LF         Rp.5300000       4       

*/