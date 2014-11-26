require_relative "../lib/Konto"
require "./spec_helper"

RSpec.describe Bank::Konto do
  describe '#inicjowanie' do
    it ' ' do
      konto = Bank::Konto.new
      expect(0).to eq(konto.kwota)
      expect(konto.id).to be >= 1
    end
  end
end
