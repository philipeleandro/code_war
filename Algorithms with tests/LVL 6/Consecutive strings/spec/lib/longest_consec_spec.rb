require 'spec_helper'
require 'longest_consec'

describe 'longest_consec' do
  it 'some tests' do
    expect(longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)).to eq("abigailtheta")
    expect(longest_consec([], 3)).to eq("")
    expect(longest_consec(["itvayloxrp","wkppqsztdkmvcuwvereiupccauycnjutlv","vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2)).to eq("wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
    expect(longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)).to eq("oocccffuucccjjjkkkjyyyeehh")
    expect(longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15)).to eq("")
  end
end