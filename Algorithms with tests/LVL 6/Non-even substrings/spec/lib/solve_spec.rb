require 'spec_helper'
require 'solve'

describe 'solve' do
  it 'some examples' do
    expect(solve("1341")).to eq(7)
    expect(solve("1357")).to eq(10)
    expect(solve("13472315")).to eq(28)
    expect(solve(("134721"))).to eq(13)
  end
end