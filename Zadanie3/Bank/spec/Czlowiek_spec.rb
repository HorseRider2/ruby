require_relative "../lib/Czlowiek"
require "./spec_helper"

RSpec.describe Bank::Czlowiek do
  describe '#inicjowanie' do
    it ' ' do
      czlowiek = Bank::Czlowiek.new('Adam', 'Wisniewski')
      expect('Adam').to eq(czlowiek.imie)
      expect('Wisniewski').to eq(czlowiek.nazwisko)
      expect(czlowiek.id).to be >= 1
    end
  end
end