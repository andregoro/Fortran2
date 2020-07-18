#include <iostream>
using namespace std;
class ponto
{
    int x,y;
public:
    int c;
    ponto(int a=0, int b=0)
    {
       x = a;
       y = b;
       cout <<y<<" : "<<x<<endl;
    }
ponto operator-(ponto p){
    int a, b;
    a = x + p.x;
    b = y + p.y;

    return ponto(a,b);
}

ponto operator*(ponto p){
    int a, b;
    a = x - p.x;
    b = y - p.y;

    return ponto(a,b);
}

//friend ostream &operator<<(ostream &output,int f);
};

/*
ostream &operator<<(ostream &output,int f){
     output<<"s";
    return output;
}
*/
//ponto pontos::operator+(ponto p)
