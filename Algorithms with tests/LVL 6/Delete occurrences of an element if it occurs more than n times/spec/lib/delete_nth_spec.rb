require 'spec_helper'
require 'delete_nth'

describe 'delete_nth' do 
  it 'some examples' do
    expect(delete_nth([1, 2, 3, 1, 1, 2, 1, 2, 3, 3, 2, 4, 5, 3, 1],3)).to eq([1, 2, 3, 1, 1, 2, 2, 3, 3, 4, 5])
    expect(delete_nth([1,1,3,3,7,2,2,2,2], 3)).to eq([1, 1, 3, 3, 7, 2, 2, 2])
    expect(delete_nth([20,37,20,21], 1)).to eq([20,37,21])
  end
end