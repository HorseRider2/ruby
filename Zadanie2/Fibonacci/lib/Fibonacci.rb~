require_relative "Fibonacci/version"

module Fibonacci
def self.Fib1(n)
 if n == 0
  return 0
 elsif n == 1
  return 1
 else
   return Fib1(n-1) + Fib1(n-2)
 end
end

def self.Fib2(n)
  tablica = []
 for i in 0..n
   wynik = ((1/Math.sqrt(5)) * ((1+Math.sqrt(5))/2) ** i - (1/Math.sqrt(5)) * ((1-Math.sqrt(5))/2) ** i).round
   #puts "wynik #{i}: #{wynik}"
   tablica << wynik
 end
  return tablica
end
end
#---------------------------------------------
#puts "Wywolanie funkcji Fib1()\n"
#for i in 0..5
# puts "wynik #{i}: #{Fibonacci.Fib1(i)}"
#end
#puts "============================="
#puts "Wywolanie funkcji Fib2()\n"
#Fibonacci.Fib2(5)
