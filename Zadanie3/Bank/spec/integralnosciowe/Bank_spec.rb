require_relative "../../lib/Czlowiek"
require_relative "../../lib/Konto"
require_relative "../../lib/Bank"
require_relative "../../lib/Klient"
require "../spec_helper"


RSpec.describe Bank::Bank do
  describe '#Testowanie banku' do
    it ' ' do
      adam = Bank::Klient.new('Adam')
      Bank::Bank.otworz_konto(adam, 1000)
      Bank::Bank.otworz_konto(adam, 500)
      except(2).to eq(adam.konta.size)
      except(1500).to eq(adam.suma_kwot)
    end
  end
end
