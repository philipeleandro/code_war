require 'spec_helper'
require 'solution'

describe 'solution' do
  it 'roman numerals decoder' do
    expect(solution('XXI')).to eq(21)
    expect(solution('I')).to eq(1)
    expect(solution('IV')).to eq(4)
    expect(solution('MMVIII')).to eq(2008)
    expect(solution('MDCLXVI')).to eq(1666)
  end
end