#include <iostream>
using namespace std;

string showArray(int arr[], int size) {
    string res = "{";
    for (int i=0;i<size;i++) {
        res += to_string(arr[i]);
        if (i != (size-1)) {
            res += ", ";
        }
    }
    res += "}";
    return res;
}

void sel_sort(int arr[], int size) {
    for (int i=0;i<size;i++) {
        for (int j=i+1;j<size;j++) {
            if (arr[i] > arr[j]) {
                int tmp = arr[i];
                arr[i] = arr[j];
                arr[j] = tmp;
            }
        }
    }
}


int main() {
    
    int A[3] = {9,3,1};
    int B[3] = {10,8,2};
    cout << "SEBELUM : " << endl << showArray(A,3) << endl << showArray(B,3)<< endl;
    sel_sort(A, 3);
    sel_sort(B, 3);
    cout << "SESUDAH : " << endl << showArray(A,3) << endl << showArray(B,3) << endl;
}