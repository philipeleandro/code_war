require 'spec_helper'
require 'padovan'

describe 'padovan' do
  it 'some examples' do
    expect(padovan(0)).to eq(1)
    expect(padovan(8)).to eq(7)
    expect(padovan(160)).to eq(25024175744225282480)
    expect(padovan(16)).to eq(65)
    expect(padovan(146)).to eq(488238309515661356)
  end
end