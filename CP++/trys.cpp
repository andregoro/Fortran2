#include <iostream>
using namespace std;
class d{
public:
void exct(int e){
    try{
        if(1==1){
            throw exception();
        }
    }catch(exception e){
        cerr<<"Erro"<<endl;
        cout<<e.what();
    }
}
void erro()throw(runtime_error){
    throw runtime_error("Erro nesta funçao");
}
};

