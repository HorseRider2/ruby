#include <iostream>
#include <string>
#include <cctype>
#include <cstring>
using namespace std;
void sortuj_rosnaco(int tab[], int rozmiar);
void sortuj_malejaco(int tab[], int rozmiar);
int main()
{
	int tablica[] = {1,0,5,9,2};
	int rozmiar = sizeof(tablica)/sizeof(int);

	cout << "Talica przed posortowaniem:" << endl;
	cout << "============================" << endl;
	for(int i = 0; i<rozmiar; i++) cout << tablica[i] << " " << flush;
	cout << "\nTalica po sortowaniu (rosnaco):" << endl;
	cout << "============================" << endl;
	sortuj_rosnaco(tablica, rozmiar);
	cout << "\nTalica po sortowaniu (malejaco):" << endl;
	cout << "============================" << endl;
	sortuj_malejaco(tablica, rozmiar);
}
void sortuj_rosnaco(int tab[], int rozmiar)
{
	int temp;
	for(int i=0; i<rozmiar-1; i++)
	{
		for(int j=i+1; j<rozmiar; j++)
		{
			if(tab[i] > tab[j])
			{
				temp = tab[i];
				tab[i] = tab[j];
				tab[j] = temp;
			}
		}
	}
	for(int i = 0; i<rozmiar; i++) cout << tab[i] << " " << flush;
}
void sortuj_malejaco(int tab[], int rozmiar)
{
	int temp;
	for(int i=0; i<rozmiar-1; i++)
	{
		for(int j=i+1; j<rozmiar; j++)
		{
			if(tab[i] < tab[j])
			{
				temp = tab[i];
				tab[i] = tab[j];
				tab[j] = temp;
			}
		}
	}
	for(int i = 0; i<rozmiar; i++) cout << tab[i] << " " << flush;
}
