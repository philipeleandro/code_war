require 'spec_helper'
require 'balance'

describe 'balance' do
  it 'some example' do
    expect(balance("", "")).to eq("Balance")
    expect(balance("!!", "??")).to eq("Right")
    expect(balance("!??", "?!!")).to eq("Left")
    expect(balance("!?!!", "?!?")).to eq("Left")
    expect(balance("!!???!????", "??!!?!!!!!!!")).to eq("Balance")
  end
end