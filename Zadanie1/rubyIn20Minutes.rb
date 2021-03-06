#Jest to kontynuacja kursu (cz. 2) Ruby in Twenty Minutes

#==========================
#1. STRINGI
#==========================
#Wszystkie metody jakie mozemy wywolac na Stringach sprawdzamy poleceniem
#String.methods

"Kot w butach".methods.size 	# 162 (tyle jest metod na stringach)

"Kot w butach".upcase		# "KOT W BUTACH"

"Kot w butach".downcase		# "kot w butach"

"%s w butach" % "Kot"		# "Kot w butach"

"%f w butach" % 2.72		# "2.720000 w butach"

"%0.1f w butach" % 2.72		# "2.7 w butach"

"Kot w butach".size		# 12

"Kot w butach".split(' ')	# ["Kot", "w", "butach"]

"Kot;w;butach".split(';')	# ["Kot", "w", "butach"]

"Kot-w;butach".split(/[;-]/)	# # ["Kot", "w", "butach"] (wyrażenie reg. dziel wzgledem ';' lub '-')

"123".to_i + 2 			# 125

"Ala ma " + 5.to_s + " ciastek"	# "Ala ma 5 ciastek"

#w zmiennych sa trzymane referencje do obiektow!

a = 'pies'

b = a

#b i a wskazuja na to samo miejsce w pamieci

b << ' i kot ' 

a				# pies i kot
b				# pies i kot

#zobaczymy teraz jakie jest id obiektow (otrzymamy pewnie rozny wynik na swoich komputerach po wywolaniu metody 'object_id')
a.object_id			# 19186140 
b.object_id			# 19186140

#podobne wlasciwosci mamy z tablicami, haszami itd.
#jezeli chcemy rzeczywiscie skopiowac wartosc obiektu mozemy uzyc metody 'dup', np.
a = 'pies'
b = a.dup
b << ' azor'
a				# pies
b				# pies azor
a.object_id			# 19129960
b.object_id			# 18949840 (wiec metoda 'dup' dziala)

#==========================
#2. TABLICE
#==========================

tablica = [3,2,4,1,5]		# [3, 2, 4, 1, 5]
tablica.max			# 5
tablica.min			# 1
tablica.first			# 3
tablica.last			# 5
tablica.sort 			# [1, 2, 3, 4, 5]
tablica + [10, 11, 20]		# [3, 2, 4, 1, 5, 10, 11, 20]
tablica[1, 3]			# [2, 4, 1]

# wyswietlanie tablicy z kazdym potrojonym elementem:
tablica.each {|i| puts i*3}

# funkcja mapujaca tablice, ale ona nie zmienia tablicy oryginalnej, tylko wyswietla w tym wypadku pomnozona przez 2
tablica.map {|i| i*2 } 		# [6, 4, 8, 2, 10]

#dopiero funkcje z '!' zmieniaja wartosc oryginalnej tablicy, np.
tablica.map! {|i| i*1.5 }	# [4.5, 3.0, 6.0, 1.5, 7.5]

# tablice nie musza sie skladac tylko z liczb, mozna sobie zadeklarowac np.
a = ["kot", 1.2, nil, [1,2,3]]  # ["kot", 1.2, nil, [1,2,3]]

# wybieranie liczb z naszej tablicy, np. mniejszych od 5
tablica.select {|i| i < 5}	# [4.5, 3.0, 1.5]

#==========================
#3. HASZE
#==========================

zw_wl = {jacek: 'pies', adam: 'kot'} 	# {:jacek=>"pies", :adam=>"kot"}
zw_wl[:adam]				# kot
zw_wl.keys				#  [:jacek, :adam]
zw_wl.values				# ["pies", "kot"]
zw_wl.to_a				#[[:jacek, "pies"], [:adam, "kot"]]
zw_wl[:aga] = 'chomik'
zw_wl					# {:jacek=>"pies", :adam=>"kot", :aga=>"chomik"}

zw_wl.each { |klucz, wartosc| puts "#{klucz} => #{wartosc}" }	
							# jacek => pies
							# adam => kot
							# aga => chomik
#==========================
#4. CZAS I DATA
#==========================

Time.now				# 2014-11-16 21:54:51 +0100
Time.now + 10				#dodaje 10 sekund do obecnego czasu
Time.now.hour				# 21
Time.now.month				# 11
Time.now.monday?			# false

#Aby operowac na datach musimy wczytac biblioteke poleceniem:
require 'date'
Date.today.to_s				# "2014-11-16"
(Date.today + 10).to_s			# "2014-11-26"

#porownywanie dwoch dat:
data_wcz = Date.today - 10
data_poz = Date.today + 5
data_wcz > data_poz			# false

#zamiana Stringa na date
Date.parse('2014-11-26').to_s		# "2014-11-26"

#==========================
#5. OBSLUGA PLIKOW
#==========================

#zapis do pliku
File.open('plik.txt', 'w') { |f| f.puts "Kot w butach" }

#odczyt z pliku
File.read('plik.txt')

#dodawanie tekstu do konca pliku 
File.open('plik.txt', 'a') { |f| f.puts "Pies w kozakach" }

#wyswietlanie calej zawartosci pliku (mozemy sobie sami formatowac)
File.foreach('plik.txt') {|zmienna| puts "====> #{zmienna}" }

