#include <iostream>

using namespace std;

main()
{
    int bilangan[5] = {8,5,9,0,0};

    bilangan[0]=8;
    bilangan[1]=5;
    bilangan[2]=9;

    cout<< "Masukkan bilangan tambahan " << endl;
    cout<<bilangan[0]<<endl;
    cout<<bilangan[1]<<endl;
    cout<<bilangan[2]<<endl;
    cout<<bilangan[3]<<endl;
    cin>>bilangan[3];
    cout<<bilangan[4]<<endl;
		cin>>bilangan[4];

    cout  << endl<< "Bilangan saat ini " << endl;

    cout<<bilangan[0]<<endl;
    cout<<bilangan[1]<<endl;
    cout<<bilangan[2]<<endl;
    cout<<bilangan[3]<<endl;
    cout<<bilangan[4]<<endl;

}
