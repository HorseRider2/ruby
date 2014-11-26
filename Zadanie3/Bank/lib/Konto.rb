require_relative "Bank/version"

module Bank
  class Konto
    attr_accessor :id, :kwota
    def initialize(kwota = 0)
      @kwota = kwota
      @id = generujId
    end
    def wyswietl()
      puts "id = #{id}, kwota = #{kwota}"
    end
    def generujId
      rand 1000
    end
  end
end
