require_relative "LiczbyZespolone/version"

module LiczbyZespolone
  class ZESPOLONA
	attr_accessor :x, :y  
	def initialize(x = 0, y = 0)
 		@x = x
 		@y = y
 	end
 	
	def wyswietl()
		puts "czesc rzeczywista = #{@x}, czesc urojona = #{@y}\n" 
	end
	
	def dodaj(a)
		c = ZESPOLONA.new  	
		c.x = @x + a.x
		c.y = @y + a.y
		return c
 	end
	def odejmij(a)
		c = ZESPOLONA.new  	
		c.x = @x - a.x
		c.y = @y - a.y
		return c
 	end
	def pomnoz(a)
		c = ZESPOLONA.new  	
		c.x = @x * a.x - @y * a.y
		c.y = @y * a.x + @x * a.y
		return c
 	end
	def podziel(a)
		c = ZESPOLONA.new  	
		c.x = (@x * a.x + @y * a.y)/((a.x ** 2 + a.y ** 2)*1.0)
		c.y = (@y * a.x - @x * a.y)/((a.x ** 2 + a.y ** 2)*1.0)
		return c
 	end
end
end

#z1 = LiczbyZespolone::ZESPOLONA.new(1,2)
#z2 = LiczbyZespolone::ZESPOLONA.new(5,3)

#puts "Oto nasze liczby zespolone:"
#z1.wyswietl
#z2.wyswietl

#z3 = LiczbyZespolone::ZESPOLONA.new
#z3 = z1.dodaj(z2)
#puts "Po dodaniu: rzeczywista: #{z3.x}, urojona: #{z3.y}\n"

#z3 = z1.odejmij(z2)
#puts "Po odejmowaniu: rzeczywista: #{z3.x}, urojona: #{z3.y}\n"

#z3 = z1.pomnoz(z2)
#puts "Po mnozeniu: rzeczywista: #{z3.x}, urojona: #{z3.y}\n"

#z3 = z1.podziel(z2)
#puts "Po dzieleniu: rzeczywista: #{z3.x}, urojona: #{z3.y}\n"
