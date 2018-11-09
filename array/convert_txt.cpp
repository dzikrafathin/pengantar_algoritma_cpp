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
    char alph[26] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
    string txt1 = "tulisan";
    int txt1_num[txt1.length()];
    cout << txt1 << endl;
    for (int i=0;i<txt1.length();i++) {
        for (int j=0;j<26;j++) {
            if (txt1[i] == alph[j]) {
                txt1_num[i] = j;
                break;
            }
        }
    }
    cout << showArray(txt1_num, txt1.length()) << endl;
    arraySort(txt1_num, txt1.length());
    for (int i=0;i<txt1.length();i++) {
        txt1[i] = alph[txt1_num[i]];
    }
    cout << txt1 << endl;
}
