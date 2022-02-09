require "spec_helper"
require "wave"

describe 'wave' do
  it 'some examples' do
    expect(wave("hello")).to eq(["Hello", "hEllo", "heLlo", "helLo", "hellO"])
    expect(wave("codewars")).to eq(["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"])
    expect(wave("")).to eq([])
    expect(wave("two words")).to eq(["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"])
  end
end