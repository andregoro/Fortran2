#include <iostream>
using namespace std;
class Emp{
public:
    void print(){
        cout<<1<<endl;
    }
};
class Emplore :public Emp{
public:
    void sett(){
        Emp::print();
    }
};
