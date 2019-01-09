#include <iostream>
using namespace std;
main()
{
    int nilai[3],a,min,maks;

    for(a=1;a<=5;a++){
   cout<<"Masukkan nilai ke-"<<a<<":";
   cin>>nilai[a];
    }

   min = nilai[1];
   maks = nilai[1];
   for(a=1;a<=5;a++){
   if(nilai[a] < min){
   min = nilai[a];
   } else if(nilai[a] > maks){
   maks = nilai[a];
   }
   }

   cout<<"nilai minimum adalah : "<<min<<endl;
   cout<<"nilai maksimum adalah : "<<maks<<endl;

return 0;
}

