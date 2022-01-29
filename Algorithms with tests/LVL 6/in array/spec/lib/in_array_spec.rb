require 'spec_helper'
require 'in_array'

describe 'in_array' do
  it 'some tests' do
    expect(in_array(["arp", "live", "strong"],["lively", "alive", "harp", "sharp", "armstrong"])).to eq(["arp", "live", "strong"])
    expect(in_array(["tarp", "mice", "bull"],[])).to eq([])
    expect(in_array(["oes", "ple", "wh"],["ruby-doc.", "neither", "versioning;", "updated", "what", "1.9.2.", "browse", "am", "have", "Ruby,"])).to eq(["wh"])
    expect(in_array(["ion", "ing", "ve", "ect", "by", "ple", "oes", "pini"],["have", "your", "to", "answer", "out", "I", "am", "I", "the", "have", "quest", "ions", "you", "reference", "for", "not", "pointed", "(mladen's", "opinion,", "known"])).to eq(["ion", "pini", "ve"])
  end
end