#include <iostream>
using namespace std;

int main()
{
   int max,j,k,min;
   float a[100];
   cout <<"Masukkan Jumlah Data : ";
   cin>>j;
   for(k=0;k<j;k++){
		cout << "masukkan bilangan ke "<< k+1 << " : ";
		cin >> a[k];
		}
   max = a[0];
    for (k=0;k<j;k++){
       if (max <a[k])
            max = a[k];

      if (min>a[k])
            min =a[k];

    }

    cout <<"Nilai Terbesar adalah : "<<max<<endl;
    cout <<"Nilai Terkecil adalah : "<<min<<endl;
    return 0;
}
