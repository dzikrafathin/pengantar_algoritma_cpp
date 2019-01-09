#include<iostream>
using namespace std;
int main(){
    int a[5]={2,2,2,2,2};
    int jumlah=0;

    for (int c=0; c<5; c++){
        cout << "Data Array [" << c << "]: " << a[c] <<endl;
    }
    for (int b=0; b<5; b++){
        jumlah = jumlah + a[b];
    }
    cout << "Jumlah Seluruh Nilai Pada Array : " << jumlah;
}
