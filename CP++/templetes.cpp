#include <iostream>
using namespace std;


template<class t>
t maximum(t value1,t value2,t value3){
    t maximumValue = value1;
    return maximumValue;
}

template<class T>
class mypair {
    T values [2];
  public:
    mypair (T first, T second)
    {
      values[0]=first; values[1]=second;
    }
    void print(){
        cout<<this->values[0]<<endl;
    }
};

template<class T>
class my{
    T v[2];
    my(int i,int ii){
        v[0]=i;
        v[1]=ii;
    }
    void f(){
        cout<<v[0]<<" : "<<v[1]<<endl;
    }
};
template<typename T>
void printA(T *arrays,int tam){
    cout<<arrays[0]<<endl;
}

class m{

public:
    string v,value;
    m(string vv):value(v){
        cout<<"jojo"<<endl;
       // delete this;
    }
    ~m(){
      cout<<"fim"<<endl;
    }
    //friend void tessw();
};
////////////////////////////
 class CRectangle
 {
    int width, height;
  public:
    void set_values (int, int);
    int area () {return (width * height);}
    friend void duplicate();
 };



