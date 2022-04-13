require 'spec_helper'
require 'spin_words'

describe 'spin_words' do
  it 'some tests' do
    expect(spin_words("Welcome")).to eq("emocleW")
    expect(spin_words("Hey fellow warriors")).to eq("Hey wollef sroirraw")
    expect(spin_words("Just kidding there is still one more")).to eq("Just gniddik ereht is llits one more")
    expect(spin_words("VClJn xpEvcrJxQG CconqpZyq ndymzcf PmWyxyFKuM othGx gdgUzlKHpPKHg")).to eq("nJlCV GQxJrcvEpx qyZpqnocC fczmydn MuKFyxyWmP xGhto gHKPpHKlzUgdg")
    expect(spin_words("rlzMzvx kL")).to eq("xvzMzlr kL")
  end
end