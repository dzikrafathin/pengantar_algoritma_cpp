#include <iostream>
using namespace std;

int main(int argc, char const *argv[])
{
   int A[10] = {5,8,3,2,4,1,10,12,9,15};
   for (int i=0;i<10;i++) {
       for (int j=i+1;j<10;j++) {
           if (A[i] > A[j]) {
               int tmp = A[i];
               A[i] = A[j];
               A[j] = tmp;
           }
       }
   }
   for (int i=0;i<10;i++) {
       cout << A[i] << endl;
   }
}
