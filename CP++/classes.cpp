class GradeBook{
public:
    string v;
    const static int b=10;
    GradeBook(string v="andre"){
        this->v=v;
    }
    ~GradeBook(){
        cout <<"fim"<<endl;
    }

    void msg(){
        cout << "andre"<<endl;
    }
    string getV(){
        return this->v;
    }
    void setV(string v){
        this->v=v;
    }
    void *d(int){
        return 0;
    }
};
//GradeBook::b;
