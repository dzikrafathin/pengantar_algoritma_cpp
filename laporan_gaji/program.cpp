#include <iostream>
using namespace std;

int  gaji_pokok, gaji_bersih, nominal_tunjangan, nominal_potongan;
string nama, nik, jabatan, status, pilihan, nama_tunjangan, nama_potongan;
int main() {
  cout << "\n\n======= APLIKASI LAPORAN GAJI =======\n\n";
  cout << "Masukan nama karyawan : ";
  cin >> nama;
  cout << "Masukan NIK karyawan : ";
  cin >> nik;
  cout << "Masukan Jabatan karyawan : ";
  cin >> jabatan;
  cout << "Masukan Status karyawan : ";
  cin >> status;
  cout << "Masukan gaji pokok karyawan : ";
  cin >> gaji_pokok;
  gaji_bersih = gaji_pokok;
  cout << "\n\nApakah karyawan memiliki tunjangan? [ya/tidak] : ";
  cin >> pilihan;
  if (pilihan == "ya") {
    cout << "\n\nMasukan nama tunjangan : ";
    cin >> nama_tunjangan;
    cout << "Masukan nominal tunjangan : ";
    cin >> nominal_tunjangan;
    gaji_bersih += nominal_tunjangan;
  }
  cout << "\n\nApakah karyawan memiliki potongan? [ya/tidak] : ";
  cin >> pilihan;
  if (pilihan == "ya") {
    cout << "\n\nMasukan nama potongan : ";
    cin >> nama_potongan;
    cout << "Masukan nominal potongan : ";
    cin >> nominal_potongan;
    gaji_bersih -= nominal_potongan;
  }
  cout << "\n\n===== LAPORAN GAJI =====\n\n";
  cout << "NIK : " << nik << endl;
  cout << "Nama : " << nama << endl;
  cout << "Jabatan : " << jabatan << endl;
  cout << "Status : " << status << endl;
  cout << "Gaji Pokok : " << gaji_pokok << endl;
  cout << "\n\n --- Tunjangan ---\n\n";
  cout << "Nama Tunjangan : " << nama_tunjangan << endl;
  cout << "Nominal : " << nominal_tunjangan << endl;
  cout << "\n\n --- Potongan ---\n\n";
  cout << "Nama Potongan : " << nama_potongan << endl;
  cout << "Nominal : " << nominal_potongan << endl;
  cout << "\n\n===== GAJI BERSIH =======\n\n";
  cout << "Total penerimaan bersih adalah Rp." << gaji_bersih << endl;
}
