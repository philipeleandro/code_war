require 'spec_helper'
require 'sort_the_inner_content'

describe 'sort_the_inner_content' do
  context 'basic tests' do
    it 'some examples' do
      expect(sort_the_inner_content("sort the inner content in descending order")).to eq("srot the inner ctonnet in dsnnieedcg oredr")
      expect(sort_the_inner_content("wait for me")).to eq("wiat for me")
      expect(sort_the_inner_content("this kata is easy")).to eq("tihs ktaa is esay")
    end
  end

  context 'random tests' do
    it 'some examples' do
      expect(sort_the_inner_content("srchbhayof")).to eq("syrohhcbaf")
      expect(sort_the_inner_content("f ec liprlfb qhbvwzonq p uhjkmcnnnu cauiv uxokwrojd hejnfjb dnjcrb")).to eq("f ec lrplifb qzwvonhbq p unnnmkjhcu cuiav uxwrookjd hnjjfeb drnjcb")
      expect(sort_the_inner_content("mwpirl deyosvik jsqfsbor dlfl hl mlzabkul mn cv ia x")).to eq("mwrpil dyvsoiek jssqofbr dlfl hl mzulkbal mn cv ia x")
    end
  end
end
