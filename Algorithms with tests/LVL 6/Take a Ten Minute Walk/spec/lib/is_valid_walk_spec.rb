require 'spec_helper'
require 'is_valid_walk'

describe 'is_valid_walk' do
  it 'some examples' do
    expect(is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])).to eq(true)
    expect(is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])).to eq(false)
    expect(is_valid_walk('w')).to eq(false)
    expect(is_valid_walk(['n','n','n','s','n','s','n','s','n','s'])).to eq(false)
    expect(is_valid_walk(["n", "s", "n", "s", "n", "s", "n", "s", "n", "n"])).to eq(false)
    expect(is_valid_walk(["n", "s", "n", "s", "n", "s", "n", "s", "n", "s"])).to eq(true)
  end
end