require_relative "Bank/version"

module Bank
  class Klient
    attr_accessor :czlowiek, :konta
  def initialize(czlowiek)
    @czlowiek = czlowiek
    @konta = []
  end
  def cala_kwota
     if @konta.empty?
	return 0
    suma_kwot = @konta.map { |konto| konto.kwota }
    suma_kwot.inject { |suma, kwota| suma + kwota }
  end
 end
end
