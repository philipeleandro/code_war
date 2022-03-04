require 'spec_helper'
require 'create_phone_number'

describe 'create_phone_number' do
  it 'some examples' do
    expect(create_phone_number([9, 5, 5, 0, 1, 3, 7, 0, 5, 5])).to eq("(955) 013-7055")
    expect(create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to eq("(123) 456-7890")
    expect(create_phone_number([2, 3, 9, 6, 0, 7, 8, 2, 7, 6])).to eq("(239) 607-8276")
    expect(create_phone_number([9, 0, 1, 3, 6, 7, 8, 1, 3, 7])).to eq("(901) 367-8137")
  end
end