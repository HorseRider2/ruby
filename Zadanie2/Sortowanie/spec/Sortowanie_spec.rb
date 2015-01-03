require 'simplecov'
SimpleCov.start

require_relative '../lib/Sortowanie'
#require "./spec_helper"

RSpec.describe Sortowanie do
  describe '#sortuj_rosnaco' do
    it 'returns sorted ascending of array' do
      tablica = [1,0,5,9,2]
      rozmiar = tablica.size
      expect(rozmiar).to be_a_kind_of(Fixnum)
      expect(rozmiar).to eq(5)
      expect(Sortowanie.sortuj_rosnaco(tablica, rozmiar)).to eq([0,1,2,5,9])
      expect(Sortowanie.sortuj_rosnaco(tablica, rozmiar)).to be_a_kind_of(Array)
    end
  end  
end

RSpec.describe Sortowanie do
  describe '#sortuj_malejaco' do
    it 'returns sorted descending of array' do
      tablica = [1,0,5,9,2]
      rozmiar = tablica.size
      expect(rozmiar).to be_a_kind_of(Fixnum)
      expect(rozmiar).to eq(5)
      expect(Sortowanie.sortuj_malejaco(tablica, rozmiar)).to eq([9,5,2,1,0])
      expect(Sortowanie.sortuj_malejaco(tablica, rozmiar)).to be_a_kind_of(Array)
    end
  end  
end
