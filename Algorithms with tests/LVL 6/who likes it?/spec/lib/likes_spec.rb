require 'spec_helper'
require 'likes'

describe 'likes' do
  it 'examples'do
    expect(likes([])).to eq('no one likes this')
    expect(likes(['Tata'])).to eq('Tata likes this')
    expect(likes(['Tata', 'Principe'])).to eq('Tata and Principe like this')
    expect(likes(['Nenem', 'Tata', 'Heitor'])).to eq('Nenem, Tata and Heitor like this')
    expect(likes(['Lucas P. Alves', 'Josicreuson Silva da Cruz', 'Junim Play', 'Max'])).to eq('Lucas P. Alves, Josicreuson Silva da Cruz and 2 others like this')
  end
end