#include <iostream>
using namespace std;

int main() {
    int pilih, alas_segitiga, tinggi_segitiga, tinggi_limas, hasil;
    cout << "\n\n------- APLIKASI PENGHITUNG LUAS SEGITIGA DAN VOLUME PRISMA --------\n\n";
    cout << "Oleh Dzikra Fathin D4RPL1B\n\n";
    cout << "ketikan 1 untuk segitiga, 2 untuk limas : ";
    cin >> pilih;
    if (pilih == 1) {
        cout << "\n\nMenghitung luas segitiga\n\n";
        cout << "Masukan nilai alas segitiga : ";
        cin >> alas_segitiga;
        cout << "Masukan nilai tinggi segitiga : ";
        cin >> tinggi_segitiga;
        hasil = (alas_segitiga * tinggi_segitiga)/2;
        cout << "\n\nLuas segitiga adalah : " << hasil << "\n\n";
    } else {
        cout << "\n\nMenghitung volume limas segitiga\n\n";
        cout << "Masukan nilai alas segitiga : ";
        cin >> alas_segitiga;
        cout << "Masukan nilai tinggi segitiga : ";
        cin >> tinggi_segitiga;
        cout << "Masukan tinggi limas : ";
        cin >> tinggi_limas;
        hasil = (alas_segitiga * tinggi_segitiga * tinggi_limas)/6;
        cout << "\n\nVolume limas adalah : " << hasil << "\n\n";
    }
}