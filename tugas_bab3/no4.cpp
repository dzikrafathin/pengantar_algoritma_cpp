#include <iostream>
using namespace std;
#define PHI 3.14

int main()
{
    double jari;
    double hasil;
    cout << "Masukan jari-jari lingkaran : ";
    cin >> jari;
    hasil = PHI * (jari * jari);
    cout << "Luas lingkaran adalah : " << hasil << endl;
    return 0;
}

