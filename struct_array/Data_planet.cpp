#include<iostream>
using namespace std;

struct planet{
    string nama;
    int rotasi;
    int revolusi;
    int jrk_matahari;
    bool atmosfer;
};
int main(){
    planet data_plt[9];
    cout << "----- INPUT DATA PLANET TATA SURYA ------";
    for(int i=0; i<9; i++){
        cout<<"\n\n-----PLANET KE " << i+1 << "-----\n\n";
        cout<<"Nama Planet : ";
        cin >> data_plt[i].nama;
        cout<<"Rotasi : ";
        cin>>data_plt[i].rotasi;
        cout<<"Revolusi : ";
        cin>>data_plt[i].revolusi;
        cout<<"Jarak Matahari : ";
        cin>>data_plt[i].jrk_matahari;
        cout <<"Memiliki atmosfer [ya/tidak] : ";
        string input;
        cin>>input;
        if (input == "ya") {
            data_plt[i].atmosfer = true;
        } else if (input == "tidak") {
            data_plt[i].atmosfer = false;
        }
    }
    cout << "DATA PLANET TATA SURYA"<<endl;
    for(int i=0; i<9; i++){
        cout << "----PLANET KE " << i+1 << "------";
        cout << "Nama : "<<data_plt[i].nama<<endl;
        cout << "Lama rotasi : "<<data_plt[i].rotasi<<endl;
        cout << "Lama revolusi : "<<data_plt[i].revolusi<<endl;
        cout << "Jarak dari matahari : "<<data_plt[i].jrk_matahari<<endl;
        if (data_plt[i].atmosfer) {
            cout << "Memiliki atmosfer" << endl;
        } else {
            cout << "Tidak memiliki atmosfer" << endl;
        }
    }

}



