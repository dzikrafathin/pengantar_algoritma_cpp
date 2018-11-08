#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
    int t,i,A[3][4],B[3][4],C[3][4];
    for (t=0;t<3;t++) {
        for (i=0;i<4;i++) {
            A[t][i]=(t*4)+i+1;
        }
    }
    cout << "MATRIX A" << endl;
    for (t=0;t<3;t++) {
        for (i=0;i<4;i++) {
            cout << A[t][i] << " ";
            
        }
        cout << endl;
    }
    for (t=0;t<3;t++) {
        for (i=0;i<4;i++) {
            B[t][i] = (t*4)+i+1;
        }
    }
    cout << "MATRIX B" << endl;
    for (t=0;t<3;t++) {
        for (i=0;i<4;i++) {
            cout << B[t][i] << " "; 
        }
        cout << endl;
    }
    for (t=0;t<3;t++) {
        for (i=0;i<4;i++) {
            C[t][i] = A[t][i] + B[t][i];
        }
    }
    cout << endl;
    cout << "MATRIX C = A + B" << endl;
    for (t=0;t<3;t++) {
        for (i=0;i<4;i++) {
            cout << C[t][i] << " ";
        }
        cout << endl;
    }
    cout << endl;
    return 0;
}
