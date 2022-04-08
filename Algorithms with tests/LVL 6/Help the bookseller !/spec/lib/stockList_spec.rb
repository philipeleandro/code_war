require 'spec_helper'
require 'stockList'

describe 'stockList' do
  it 'some tests' do
    expect(stockList(["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"],["A", "B", "C", "D"])).to eq("(A : 0) - (B : 1290) - (C : 515) - (D : 600)")
    expect(stockList(["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"],["A", "B"])).to eq("(A : 200) - (B : 1140)")
    expect(stockList([],["B", "R", "D", "X"])).to eq("")
    expect(stockList(["ROXANNE 102", "RHODODE 123", "BKWRKAA 125", "BTSQZFG 239", "DRTYMKH 060"],["U", "V", "R"])).to eq("(U : 0) - (V : 0) - (R : 225)")
  end
end