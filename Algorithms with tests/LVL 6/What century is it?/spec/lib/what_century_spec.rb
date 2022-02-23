require 'spec_helper'
require 'what_century'

describe 'century' do
  it 'some examples' do
      expect(what_century("1001")).to eq("11th")
      expect(what_century("2101")).to eq("22nd")
      expect(what_century("1200")).to eq("12th")
      expect(what_century("4201")).to eq("43rd")
      expect(what_century("9999")).to eq("100th")
      expect(what_century("2214")).to eq("23rd")
  end
end