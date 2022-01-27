require 'spec_helper'
require 'order'

describe Order do
  it "new sentence's order" do
    test = Order.new
    expect(test.new_order('is2 Thi1s T4est 3a')).to eq('Thi1s is2 3a T4est')
    expect(test.new_order('4of Fo1r pe6ople g3ood th5e the2')).to eq('Fo1r the2 g3ood 4of th5e pe6ople')
  end

  it "empty string" do
    test = Order.new
    expect(test.new_order('')).to eq('')
  end
end