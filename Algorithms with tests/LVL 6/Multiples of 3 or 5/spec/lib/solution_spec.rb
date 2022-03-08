require 'spec_helper'
require 'solution'

describe 'solution' do
  it 'some examples' do
    expect(solution(10)).to eq(23)
    expect(solution(200)).to eq(9168)
    expect(solution(20)).to eq(78)
    expect(solution(805)).to eq(151073)
    expect(solution(293)).to eq(19964)
  end
end