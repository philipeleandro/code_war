require 'spec_helper'
require 'duplicate_encode'

describe 'duplicate_encode' do
  it 'some examples' do
    expect(duplicate_encode('b)RQJ!av)enmTFmmc!@xuxlQbRlGPwQad')).to eq("))))())()(()(())()()())))))((())(")
    expect(duplicate_encode("Jv@T  dm@)bO leadmRR(nwlJOlOy")).to eq(")()()))))(()))(())))((()))))(")
    expect(duplicate_encode("dyaIPHOSucPnyn)QwlISaH@zcmlJ")).to eq("()))))()()))))((()))))(()()(")
    expect(duplicate_encode("P! ll!nIaa@ de@(w!()(klJPOdmwGJR")).to eq("))))))(()))))()))))()()))()()()(")
  end
end