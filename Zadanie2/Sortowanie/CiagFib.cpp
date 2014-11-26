#include <iostream>
#include <cmath>
using namespace std;

int Fib1(int n);
void Fib2(int n);

int main()
{
	cout << "WERSJA REKURENCYJNA" << endl;
	for(int i = 0; i<8; i++)
	 cout << i << " wyraz: " << Fib1(i) << endl;
	//==============================================
	cout << "TERAZ WERSJA ITERACYJNA" << endl;
	Fib2(8);	
}

int Fib1(int n) //wersja rekurencyjna
{
	if(n == 0) return 1;
	else if(n == 1) return 1;
	else return Fib1(n-1) + Fib1(n-2);
}

void Fib2(int n) //wersja interacyjna
{
	int *wsk = new int[n];
	for(int i = 0; i<n; i++) 
	 wsk[i] = 1/sqrt(5.0) * pow((1+sqrt(5.0))/2.0, i) - 1/sqrt(5.0) * pow((1-sqrt(5.0))/2.0, i);

	for(int i = 0; i<n; i++)
	 cout << i << " wyraz: " << wsk[i] << endl; 
}

