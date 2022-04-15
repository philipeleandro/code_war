require 'spec_helper'
require 'pig_it'

describe 'pig_it' do 
  it 'returns changed string' do
    expect(pig_it("Pig latin is cool")).to eq("igPay atinlay siay oolcay")
    expect(pig_it("This is my string")).to eq("hisTay siay ymay tringsay")
    expect(pig_it("Sic transit gloria mundi")).to eq("icSay ransittay loriagay undimay")
    expect(pig_it("O tempora o mores !")).to eq("Oay emporatay oay oresmay !")
    expect(pig_it("Acta est fabula" )).to eq("ctaAay steay abulafay")
  end
end