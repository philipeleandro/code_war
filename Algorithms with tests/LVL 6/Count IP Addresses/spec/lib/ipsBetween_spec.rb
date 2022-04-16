require 'spec_helper'
require 'ipsBetween'

describe 'ipsBetween' do
  it 'some tests' do
    expect(ipsBetween("150.0.0.0","150.0.0.1")).to eq 1
    expect(ipsBetween("10.0.0.0","10.0.0.50")).to eq 50
    expect(ipsBetween("20.0.0.10","20.0.1.0")).to eq 246
    expect(ipsBetween("170.0.0.0","170.1.0.0")).to eq 65536
    expect(ipsBetween("180.0.0.0","181.0.0.0")).to eq 16777216
  end
end