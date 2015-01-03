require 'simplecov'
SimpleCov.start

require_relative '../lib/Fibonacci'
#require "./spec_helper"


RSpec.describe Fibonacci do
  describe '#Fib1' do
    it 'returns Fibonaccis sequence recursive method' do
      tablica = []
      ciag = [0,1,1,2,3,5]
      ilosc = ciag.size - 1
      for i in 0..ilosc
        tablica << Fibonacci.Fib1(i)
      end
      expect(ciag).to eq(tablica)
      expect(tablica).to be_a_kind_of(Array)
    end
  end  
end


RSpec.describe Fibonacci do
  describe '#Fib2' do
    it 'returns Fibonaccis sequence iterative method' do
      ciag = [0,1,1,2,3,5]
      ilosc = ciag.size - 1
      expect(ciag).to eq(Fibonacci.Fib2(ilosc))
      expect(Fibonacci.Fib2(ilosc)).to be_a_kind_of(Array)
    end
  end  
end
