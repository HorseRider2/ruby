require_relative "Bank/version"

module Bank
  class Czlowiek
    attr_accessor :imie, :nazwisko, :id
  def initialize(imie, nazwisko)
    @imie = imie
    @nazwisko = nazwisko
    @id = generujId
  end
  def wyswietl()
    "id = #{id}, imie = #{imie}, nazwisko =  #{nazwisko}"
  end
  def generujId
    rand 1000
  end
 end
end
