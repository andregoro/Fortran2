#ifndef OPERADOR_H_INCLUDED
#define OPERADOR_H_INCLUDED

ponto ponto::operator+(ponto p)
{
    int a, b;
    a = x + p.x;
    b = y + p.y;

    return ponto(a, b);
}

#endif // OPERADOR_H_INCLUDED
