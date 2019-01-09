#include <iostream>
using namespace std;

void view(int arr[], int n) {
    cout << "================\nSLOT || ISI DATA\n================\n";
    for (int i=0;i<n;i++) {
        if (arr[i] != 0) {
            cout <<" "<<i<<"   ||  "<<arr[i]<<"\n----------------\n";
        } else if (arr[i] == 0) {
            cout <<" "<<i<<"   ||  EMPTY\n----------------\n";
        }
    }
}

int main()
{
    int data[10] = {2,4,0,6,7,0,0,9,5,0};
    view(data, 10);
}
