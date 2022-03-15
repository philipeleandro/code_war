require 'spec_helper'
require 'pangram?'

describe 'pangram?' do 
  it 'is a pangram' do
    expect(pangram?("The quick brown fox jumps over the lazy dog.")).to eq(true)
    expect(pangram?("Cwm fjord bank glyphs vext quiz")).to eq(true)
    expect(pangram?("ABCD45EFGH,IJK,LMNOPQR56STUVW3XYZ")).to eq(true)
  end

  it 'is a pangram' do
    expect(pangram?("This is not a pangram.")).to eq(false)
    expect(pangram?("aaaaaaaaaaaaaaaaaaaaaaaaaa")).to eq(false)
    expect(pangram?("A pangram is a sentence that contains every single letter of the alphabet at least once.")).to eq(false)
  end
end