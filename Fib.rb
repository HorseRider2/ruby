#!/usr/bin/env ruby

def Fib1(n)
 if n == 0
  return 1
 elsif n == 1
  return 1
 else
   return Fib1(n-1) + Fib1(n-2)
 end
end

def Fib2(n)
 for i in 0..n
   wynik = ((1/Math.sqrt(5)) * ((1+Math.sqrt(5))/2) ** i - (1/Math.sqrt(5)) * ((1-Math.sqrt(5))/2) ** i).round
   puts "wynik #{i}: #{wynik}"
 end
end

puts "Wywolanie funkcji Fib1()\n"
for i in 0..5
 puts "wynik #{i}: #{Fib1(i)}"
end
puts "============================="
puts "Wywolanie funkcji Fib2()\n"
Fib2(5)
