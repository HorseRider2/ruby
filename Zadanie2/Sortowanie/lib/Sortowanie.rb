require_relative "Sortowanie/version"

module Sortowanie
 def self.sortuj_rosnaco(tablica, rozmiar)
 for i in 0...rozmiar-1
  for j in i+1...rozmiar
   if tablica[i] > tablica[j]
    temp = tablica[i]
    tablica[i] = tablica[j]
    tablica[j] = temp
   end
  end
 end
 return tablica
end

def self.sortuj_malejaco(tablica, rozmiar)
 for i in 0...rozmiar-1
  for j in i+1...rozmiar
   if tablica[i] < tablica[j]
    temp = tablica[i]
    tablica[i] = tablica[j]
    tablica[j] = temp
   end
  end
 end
  return tablica
end
end

#tablica = [1,0,5,9,2]
#rozmiar = tablica.size
#puts "Talica przed posortowaniem: "
#tablica.each { |a| print "#{a} "}
#puts ""
#puts "Talica po sortowaniu rosnaco:"
#Sortowanie.sortuj_rosnaco(tablica, rozmiar)
#tablica.each { |a| print "#{a} "}
#puts ""
#puts "Talica po sortowaniu malejaco:"
#Sortowanie.sortuj_malejaco(tablica, rozmiar)
#tablica.each { |a| print "#{a} "}
#puts ""

