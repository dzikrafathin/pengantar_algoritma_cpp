#include<iostream>
using namespace std;
int main(){
    int a[5]={23,12,32,11,33};
    int ubah_a, b;
    int x=0;

    for (int c=0; c<5; c++){
        cout << "Data Array [" << c << "]: " << a[c] <<endl;
    }
    cout << "Masukkan Nilai Yang Akan Diubah : ";
    cin >> b;

        for(int i=0;i<5;i++){
            if(a[i] == b){
                x=1 ;
                cout << "Data dengan nilai "<< b <<" di index ke-"<<i<<"\n";
                cout << "Masukkan data yang baru: ";
                cin >> a[i];
                cout << "Data yang baru: "<<endl;

                for(i=0;i<5;i++){
                    cout<<"Data ke-"<< i <<" :"<< a[i] << endl;
                }
            }
            else{
                cout << "Tidak ditemukan!";
            }
        }
}
