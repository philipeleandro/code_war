require 'spec_helper'
require 'fire_and_fury'

describe 'fire_and_fury' do 
  it 'some examples' do
    expect(fire_and_fury("FURYYYFIREYYFIRE")).to eq("I am furious. You and you are fired!")
    expect(fire_and_fury("FIREYYFURYYFURYYFURRYFIRE")).to eq("You are fired! I am really furious. You are fired!")
    expect(fire_and_fury("FYRYFIRUFIRUFURE")).to eq("Fake tweet.")
  end
end