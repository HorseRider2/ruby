require_relative '../lib/Sortowanie'
require "./spec_helper"

RSpec.describe Sortowanie do
  describe '#sortuj_rosnaco' do
    it 'returns sorted ascending of array' do
      tablica = [1,0,5,9,2]
      rozmiar = tablica.size
      expect([0,1,2,5,9]).to eq(Sortowanie.sortuj_rosnaco(tablica, rozmiar))
    end
  end  
end

RSpec.describe Sortowanie do
  describe '#sortuj_malejaco' do
    it 'returns sorted descending of array' do
      tablica = [1,0,5,9,2]
      rozmiar = tablica.size
      expect([9,5,2,1,0]).to eq(Sortowanie.sortuj_malejaco(tablica, rozmiar))
    end
  end  
end
