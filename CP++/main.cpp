#include <iostream>
#include "templetes.cpp"
#include "classes.cpp"
#include "operador.cpp"
#include "Dinamica.cpp"
#include "trys.cpp"
#include "virtuals.cpp"
using namespace std;

int did(int){
    return 0;
}
void operador(){
    ponto p1(1,5), p2(3,4), Soma;
//    Soma=p1.operator-(p2);
   // cout<< Soma<<endl;
}

    void duplicate(){
    cout<<"oi";
}

void templatess(){
int kk;
    mypair<string>k("1","2");
    k.print();

    kk=maximum(1,2,2);
    //maximum;
    GradeBook *p;
    p->msg();

    cout <<GradeBook::b<<endl;
    cout << "Hello world!" << endl;
    cout <<kk<<endl;
    cout<<did(10);

    m *an=new m("");



}

void virtuals(){
Emplore e;
e.sett();
}
void exceptions(){
    d g;
    g.exct(1);
}
void io(){
    string word="andre";
    cout.put(64);
    cout<< static_cast<string>(word);
//    cout<< static_cast<void>(word);
}
void Memoria_dina(){

    auto_ptr< pont >ptrToInteger(new pont(7));
    ptrToInteger
}
int main()
{
Memoria_dina();
}
