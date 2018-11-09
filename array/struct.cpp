#include <iostream>
using namespace std;

struct planet {
    string nama;
    int radius;
    int jrk_matahari;
    int revolusi;
    bool atmosfer;
};

int main(int argc, char const *argv[])
{
    planet list_planet[9];

    /* Merkurius */
    list_planet[0].nama = "Merukrius";
    list_planet[0].radius = 10;
    list_planet[0].jrk_matahari = 20;
    list_planet[0].revolusi = 30;
    list_planet[0].atmosfer = false;
}
