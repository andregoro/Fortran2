#include <iostream>
#include<new>
#include<cstdlib>
#include<memory>

using namespace std;

class Memoria{


public:
    void erro(){
        cerr<<"Chamando erro"<<endl;
        abort();
    }
void mostra(){
//set_new_handler(erro);
    double *f=new double[500];
    for(int i:f){

    }
///////////////////////////////////////


}
};
            class pont{
        int val;
    public:
        pont(int i=0):val(i){
            cout<<"contrutor"<<val<<endl;
        }
        void setPont(int i){
            val=i;
        }
        int getPont(){
            return val;
        }
    };
