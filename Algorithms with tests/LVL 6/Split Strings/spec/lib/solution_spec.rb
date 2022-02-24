require 'spec_helper'
require 'solution'

describe 'solution' do
  it 'some examples' do
    expect(solution("abcdef")).to eq(["ab", "cd", "ef"])
    expect(solution("abcdefg")).to eq(["ab", "cd", "ef", "g_"])
    expect(solution("")).to eq([])
    expect(solution("ValyTuoxJzUnVa")).to eq(["Va", "ly", "Tu", "ox", "Jz", "Un", "Va"])
    expect(solution("xYjdSqWsRAUpsJwifgNYczFvdFLWkWSyjCMB")).to eq(["xY", "jd", "Sq", "Ws", "RA", "Up", "sJ", "wi", "fg", "NY", "cz", "Fv", "dF", "LW", "kW", "Sy", "jC", "MB"])
  end
end