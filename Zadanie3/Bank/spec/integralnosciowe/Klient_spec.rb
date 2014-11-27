require_relative "../../lib/Czlowiek"
require_relative "../../lib/Konto"
require_relative "../../lib/Bank"
require_relative "../../lib/Klient"
require "../spec_helper"

RSpec.describe Bank::Klient do
  describe '#testowanie klienta...' do
    it ' ' do
      klient = Bank::Klient.new('Anonim')
      expect(0).to eq(suma_kwot)
    end
  end
end
