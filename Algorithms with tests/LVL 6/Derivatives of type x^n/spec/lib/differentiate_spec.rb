require 'spec_helper'
require 'differentiate'

describe 'differentiate' do 
  context 'Constant' do
    it 'diffrentiate' do
      expect(differentiate("0")).to eq("0")
      expect(differentiate("4")).to eq("0")
      expect(differentiate("50")).to eq("0")
      expect(differentiate("-109")).to eq("0")
    end
  end

  context 'Regular cases' do
    it 'diffrentiate' do
      expect(differentiate("12x^3")).to eq("36x^2")
      expect(differentiate("-12x^3")).to eq("-36x^2")
      expect(differentiate("12x^-3")).to eq("-36x^-4")
      expect(differentiate("-12x^-3")).to eq("36x^-4")
    end
  end

  context 'Degree 1' do
    it 'diffrentiate' do
      expect(differentiate("7x")).to eq("7")
      expect(differentiate("-7x")).to eq("-7")
      expect(differentiate("12x")).to eq("12")
      expect(differentiate("-12x")).to eq("-12")
    end
  end
  
  context 'Degree 2' do
    it 'diffrentiate' do
      expect(differentiate("7x^2")).to eq("14x")
      expect(differentiate("-7x^2")).to eq("-14x")
      expect(differentiate("14x^2")).to eq("28x")
      expect(differentiate("-14x^2")).to eq("-28x")
    end
  end

  context 'Constant' do
    it 'diffrentiate' do
      expect(differentiate("x")).to eq("1")
      expect(differentiate("-x")).to eq("-1")
      expect(differentiate("-x^4")).to eq("-4x^3")
      expect(differentiate("x^-4")).to eq("-4x^-5")
      expect(differentiate("-x^-4")).to eq("4x^-5")
    end
  end

end