#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    int A[5] = {4,6,9,3,1};
    int max = A[0], min = A[0];
    for (int i=0;i<5;i++) {
        if (A[i] > max) {
            max = A[i];
        }
        if (A[i] < min) {
            min = A[i];
        }
    }
    cout << "MAX : " << max << endl;
    cout << "MIN : " << min << endl;
}
