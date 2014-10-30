#include <iostream>
#include <cmath>
using namespace std;

class ZESPOLONA
{
    public:
    double x, y;
    ZESPOLONA(double a = 0, double b = 0) : x(a), y(b) {}
    ZESPOLONA dodaj(ZESPOLONA a);
    ZESPOLONA odejmij(ZESPOLONA a);
    ZESPOLONA pomnoz(ZESPOLONA a);
    ZESPOLONA podziel(ZESPOLONA a);
    void wyswietl(void);
};
ZESPOLONA ZESPOLONA::dodaj(ZESPOLONA a)
{
    ZESPOLONA wynik;
    wynik.x = x + a.x;
    wynik.y = y + a.y;
    return wynik;
}
ZESPOLONA ZESPOLONA::odejmij(ZESPOLONA a)
{
    ZESPOLONA wynik;
    wynik.x = x - a.x;
    wynik.y = y - a.y;
    return wynik;
}
ZESPOLONA ZESPOLONA::pomnoz(ZESPOLONA a)
{
    ZESPOLONA wynik;
    wynik.x = x * a.x - y * a.y;
    wynik.y = y * a.x + y * a.y;
    return wynik;
}
ZESPOLONA ZESPOLONA::podziel(ZESPOLONA a)
{
    ZESPOLONA wynik;
    wynik.x = (x * a.x + y * a.y)/(pow(a.x, 2) + pow(a.y, 2));
    wynik.y = (y * a.x - y * a.y)/(pow(a.x, 2) + pow(a.y, 2));
    return wynik;
}
void ZESPOLONA::wyswietl(void)
{
    cout << "Czesc rzeczywista: " << x << ", "
    << "czesc urojona: " << y << endl;
}
int main()
{
    //Przykladowe testowanie programu...
    ZESPOLONA pierwsza_liczba(2,5); // 2 + 5i
    ZESPOLONA druga_liczba(4,2); //4 + 2i
    ZESPOLONA wynik;
    wynik = pierwsza_liczba.dodaj(druga_liczba);
    wynik.wyswietl();
    return 0;
}
