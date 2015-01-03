require 'simplecov'
SimpleCov.start

require_relative '../lib/LiczbyZespolone'
#require "./spec_helper"

RSpec.describe LiczbyZespolone do
  describe '#dodaj' do
    it 'zwraca sume liczb' do
      z1 = LiczbyZespolone::ZESPOLONA.new(3,2)
      z2 = LiczbyZespolone::ZESPOLONA.new(4,8)
      wynik = LiczbyZespolone::ZESPOLONA.new(7,10)
      expect(wynik.x).to eq(z1.dodaj(z2).x)
      expect(wynik.y).to eq(z1.dodaj(z2).y)
      #expect(LiczbyZespolone::ZESPOLONA.new(11,10)).to eq(z1.dodaj(z2))
    end
  end  
end

RSpec.describe LiczbyZespolone do
  describe '#odejmij' do
    it 'zwraca roznice liczb' do
      z1 = LiczbyZespolone::ZESPOLONA.new(3,2)
      z2 = LiczbyZespolone::ZESPOLONA.new(4,8)
      wynik = LiczbyZespolone::ZESPOLONA.new(-1,-6)
      expect(wynik.x).to eq(z1.odejmij(z2).x)
      expect(wynik.y).to eq(z1.odejmij(z2).y)
    end
  end  
end

RSpec.describe LiczbyZespolone do
  describe '#pomnoz' do
    it 'zwraca iloczyn liczb' do
      z1 = LiczbyZespolone::ZESPOLONA.new(3,2)
      z2 = LiczbyZespolone::ZESPOLONA.new(4,8)
      wynik = LiczbyZespolone::ZESPOLONA.new(-4,32)
      expect(wynik.x).to eq(z1.pomnoz(z2).x)
      expect(wynik.y).to eq(z1.pomnoz(z2).y)
    end
  end  
end

RSpec.describe LiczbyZespolone do
  describe '#podziel' do
    it 'zwraca jedna liczbe podzielona przez druga liczbe' do
      z1 = LiczbyZespolone::ZESPOLONA.new(3,2)
      z2 = LiczbyZespolone::ZESPOLONA.new(4,8)
      wynik = LiczbyZespolone::ZESPOLONA.new(28/80.0,-16/80.0)
      expect(wynik.x).to eq(z1.podziel(z2).x)
      expect(wynik.y).to eq(z1.podziel(z2).y)
    end
  end  
end


