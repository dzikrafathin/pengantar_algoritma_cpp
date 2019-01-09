#include <iostream>
using namespace std;

int sh_modus(int arr[], int n) {
    int modus = 0;
    int count1 = 0;
    int count2 = 0;
    for (int i=0;i<n;i++) {
        if (arr[modus] == arr[i]) {
            count1++;
        }
    }
    for (int i=0;i<n;i++) {
        if (arr[modus+1] == arr[i]) {
            count2++;
        }
    }
    if (count2 > count1) {
        modus++;
    }
}

int main()
{
    int data[12];
    //Sepakati untuk slot kosong dengan -1
    for (int i=0;i<12;i++) {
        data[i] = -1;
    }
    //kemudian isi data
    data[0] = 1;
    data[1] = 8;
    data[2] = 0;
    data[3] = 5;
    data[4] = 0;
    data[5] = 3;
    data[6] = 9;
    return 0;
}
