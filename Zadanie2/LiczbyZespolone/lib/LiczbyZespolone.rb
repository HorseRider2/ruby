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

