#include <iostream>
using namespace std;

void arraySort(int arr[], int size) {
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

int main(int argc, char const *argv[])
{
   int A[10] = {9,6,4,7,5,2,11,10,1,13};
   cout << showArray(A, 10) << endl;
   arraySort(A, 10);
   cout << showArray(A, 10) << endl;
}
/*sort array*/