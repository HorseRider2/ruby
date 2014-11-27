require_relative "Bank/version"

module Bank
  class Bank
    def self.otworz_konto(klient, kwota = 0)
      klient.konto << Konto.new(kwota)
    end
  end
end
