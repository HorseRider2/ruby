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
   tablica << wynik
 end
  return tablica
end
end
