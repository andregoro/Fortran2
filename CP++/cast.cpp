#include <iostream>
using namespace std;

class Cast{
    friend void r();
};
void r(){
        cout.put(100);
        //cout.eof();
        cout<<"andre";
}
