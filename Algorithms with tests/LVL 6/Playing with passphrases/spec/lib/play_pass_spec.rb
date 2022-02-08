require 'spec_helper'
require 'play_pass'

describe 'play_pass' do 
  it 'some example' do
    expect(play_pass("I LOVE YOU!!!", 1)).to eq("!!!vPz fWpM J")
  end

  it 'some example' do
    expect(play_pass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2)).to eq("4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO")
  end

  it 'some example' do
    expect(play_pass("TO BE HONEST WITH YOU I DON'T USE THIS TEXT TOOL TOO OFTEN BUT HEY... MAYBE YOUR NEEDS ARE DIFFERENT.", 5)).to eq( ".ySjWjKkNi jWf xIjJs wZtD JgDfR ...dJm yZg sJyKt tTy qTtY YcJy xNmY JxZ Y'StI N ZtD MyNb yXjStM Jg tY")
  end
end