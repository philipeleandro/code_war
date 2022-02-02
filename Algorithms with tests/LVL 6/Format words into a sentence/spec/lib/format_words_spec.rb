require 'spec_helper'
require 'format_words'

describe 'format words' do
  it 'some example' do
    expect(format_words(['one', '', 'three'])).to eq('one and three')
    expect(format_words(['one', 'two', 'three', 'four'])).to eq('one, two, three and four')
    expect(format_words(['one'])).to eq('one')
    expect(format_words(['', '', 'three'])).to eq('three')
    expect(format_words(['one', 'two', ''])).to eq('one and two')
    expect(format_words([])).to eq('')
    expect(format_words(nil)).to eq('')
    expect(format_words([''])).to eq('')
  end
end
