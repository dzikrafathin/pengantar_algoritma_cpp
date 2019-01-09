#include <iostream>
#include <cctype>
using namespace std;

int txt_convert(char txt) {
    if (isupper(txt)) {
        txt = tolower(txt);
    }
    char alphabet[26] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
    for (int i=0;i<26;i++) {
        if (txt == alphabet[i]) {
            return i;
        }
    }
}

void txt_sort(string list[], int size) {
    for (int i=0;i<size;i++) {
        for (int j=i+1;j<size;j++) {
            int num = 0;
            while (list[i][num] == list[j][num]) {
                num ++;
            }
            char txt1 = txt_convert(list[i][num]);
            char txt2 = txt_convert(list[j][num]);
            if (txt1 > txt2) {
                string tmp = list[i];
                list[i] = list[j];
                list[j] = tmp;
            }
        }
    }
}

string showArray(string arr[], int size) {
    string res = "{";
    for (int i=0;i<size;i++) {
        res += arr[i];
        if (i != (size-1)) {
            res += ", ";
        }
    }
    res += "}";
    return res;
}

int main(int argc, char const *argv[])
{
    string arr_txt[10] = {
        "intel",
        "amd",
        "nvida",
        "geforce",
        "inside",
        "asus",
        "acer",
        "lenovo",
        "atheros",
        "logitech"
    };
    cout << showArray(arr_txt, 10) << endl;
    txt_sort(arr_txt, 10);
    cout << showArray(arr_txt, 10) << endl;
}
