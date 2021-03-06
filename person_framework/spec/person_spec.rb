require 'spec_helper'

describe "Person class" do
  subject {Person.new("Joe", "Bloggs","1 Jan 1990")}
  it 'Should store and return personal information' do
    expect(subject.dob).to eq Date.new(1990,1,1)
    expect(subject.first_name).to eq "Joe"
    expect(subject.sur_name).to eq "Bloggs"
    expect(subject.fullname).to eq "Joe Bloggs"
end

  it "Should have an optional dob" do
      subject = Person.new("Joe", "Bloggs")
      expect(subject.dob).to be_nil
  end

  it "should store and return emails in an array" do
      subject.add_email("joe@work.com")
      subject.add_email("joe.bloggs@work.com")

      expect(subject.emails).to eq ["joe@work.com", "joe.bloggs@work.com"]
  end

  it "Should store and return phone numbers in an array" do
    subject.add_phone("07712345678")
    subject.add_phone("02012345678")

    expect(subject.phone_numbers).to eq ["07712345678","02012345678"]
  end

  it "Should remove email addresses" do
    subject.add_email("joe@work.com")
    subject.add_email("joe.bloggs@work.com")
    subject.remove_email(0)

    expect(subject.emails).to eq ["joe.bloggs@work.com"]
  end

  it "Should remove phone numbers" do
    subject.add_phone("07712345678")
    subject.add_phone("02012345678")
    subject.remove_phone(0)
    expect(subject.phone_numbers).to eq ["02012345678"]
  end

  it "Should show the person object details when calling to_s" do
    skip "Need framework for text"
    subject.add_email("joe@foo.com")
    subject.add_phone("07712345678")
    subject.add_phone("02012345678")

    expect(subject.to_s).to eq "Joe Bloggs was born on 1990-01-01.\n Their email addresses are:
[\"joe@foo.com\"].\n Their phone numbers are [\"07712345678\", \"02012345678\"]"
  end


end
