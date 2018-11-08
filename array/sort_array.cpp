#include <iostream>
using namespace std;

int a[10] = {58,44,33,12,3,55,43,21,9,6};

void input(int data, int i) {
    a[i] = data;
}

void tampil() {
    for (int i=0;i<10;i++) {
        cout << a[i] << " ";
        cout << endl;
    }
}

void tukar(int data1, int data2) {
    long temp = a[data1];
    a[data1] = a[data2];
    a[data2] = temp;
}

void selectionSort() {
    int i,j,indek;
    for (i=0;i<5-1;i++) {
        indek=i;
        for (j=i+1;j<5;j++) {
            if (a[indek] > a[j])
                indek=j;
        }
        tukar(i,indek);
    }
}

int main()
{
    tampil();
    cout << "-----------" << endl;
    selectionSort();
    cout << "------------";
    tampil();
}
