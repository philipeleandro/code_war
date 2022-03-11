require 'spec_helper'
require 'calc'

describe 'calc' do
  it 'some examples' do
    expect(calc("")).to eq(0)
    expect(calc("3")).to eq(3.0)
    expect(calc("3.5")).to eq(3.5)
    expect(calc("1 3 +")).to eq(4)
    expect(calc("1 3 *")).to eq(3)
    expect(calc("1 3 -")).to eq(-2)
    expect(calc("4 2 /")).to eq(2)
  end
end