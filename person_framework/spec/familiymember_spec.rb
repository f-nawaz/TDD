require 'spec_helper'

describe "FamilyMember class" do
  subject {FamilyMember.new("Joe", "Bloggs","1 Jan 1990")}

  it "Should able to create an object of class FamilyMember" do


    expect(subject.first_name).to eq "Joe"
    expect(subject.sur_name).to eq "Bloggs"
    expect(subject.fullname).to eq "Joe Bloggs"
    expect(subject.dob).to eq Date.new(1990,1,1)
    expect(subject.relationship).to eq "relationship"
  end
end
