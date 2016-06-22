require 'spec_helper'

describe "FamilyMember class" do
  it "Should able to create an object of class FamilyMember" do
    family = FamilyMember.new("Joe", "Bloggs", "1 Jan 1990")

    expect(family.first_name).to eq "Joe"
    expect(family.sur_name).to eq "Bloggs"
    expect(family.fullname).to eq "Joe Bloggs"
    expect(family.dob).to eq Date.new(1990,1,1)
  end
end
