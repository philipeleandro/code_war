require 'spec_helper'
require 'anagrams'

describe 'anagrams' do
  it 'some tests' do
    expect(anagrams("a", ["a", "b", "c", "d"])).to eq(["a"])
    expect(anagrams("abba", ["aabb", "bbaa", "abab", "baba", "baab", "abcd", "abbba", "baaab", "abbab", "abbaa", "babaa"])).to eq(["aabb", "bbaa", "abab", "baba", "baab"])
    expect(anagrams("big", ["gig", "dib", "bid", "biig"])).to eq([])
    expect(anagrams("ab", ["ab", "ba", "aa", "bb", "cc", "ac", "bc", "cd"])).to eq(["ab", "ba"])
  end
end