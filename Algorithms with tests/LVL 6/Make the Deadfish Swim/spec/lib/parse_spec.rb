require 'spec_helper'
require 'parse'

describe "Simple tests" do
  it 'some examples' do
    expect(parse("ooo")).to eq([0, 0, 0])
    expect(parse("iiisdoso")).to eq([8, 64])
    expect(parse("ioioio")).to eq([1, 2, 3])
    expect(parse("idoiido")).to eq([0, 1])
    expect(parse("isoisoiso")).to eq([1, 4, 25])
    expect(parse("codewars")).to eq([0])
  end
end
