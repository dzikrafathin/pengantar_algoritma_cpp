#include <iostream>
#include <cctype>
using namespace std;

int main(int argc, char const *argv[])
{
    char input;
    cout << "Masukan karakter bebas : ";
    cin.get(input);
    cout << "Karakter yang dimasukan adalah : " << input << endl;
    cout << "Kode ASCII karakter tersebut adalah : " << int(input) << endl;
    if (isalpha(input)) 
        cout << "Karakter alphabet" << endl;
    if (isdigit(input))
        cout << "Karakter numerik" << endl;
    if (islower(input))
        cout << "Huruf kecil biasa" << endl;
    if (isupper(input))
        cout << "Huruf kapital" << endl;
    if (isspace(input))
        cout << "Karakter spasi";
    return 0;
}
/*
 => function int(char) fungsinya untuk mengetahui nilai 
    karakter ASCII dari sebuah karakter yang dimasukan
    
 => isalpha(), isdigit(), islower(), isupper(), isspace() untuk mengecek 
    apakah karakter alphabet, angka, huruf kecil, huruf kapital, ataupun 
    karakter spasi
*/
