#include <iostream>
using namespace std;
int main()
{
    int a[100]={1,2,3,4,5,6,7,8,9,10};
    int hapus;
    //Tampilkan Array
    for (int i=0;i<100;i++)
    {
        if (a[i]==0)
        cout << "Data ke "<<i+1<<" Array ["<<i<<"] = "<<" "<<endl;
        else
        cout << "Data ke "<<i+1<<" Array ["<<i<<"] = "<<a[i]<<endl;
    }
    //Menghapus array
    cout << "Masukkan data yang ingin dihapus : ";
    cin >> hapus;
    for (int h=hapus-1;h<100-1;h++)
    {
        a[h]=a[h+1];
    }
    for (int n=0;n<100;n++)
    {
        if (a[n]==0)
        cout << "Data ke "<<n+1<<" Array ["<<n<<"] = "<<" "<<endl;
        else
        cout << "Data ke "<<n+1<<" Array ["<<n<<"] = "<<a[n]<<endl;
    }
}
