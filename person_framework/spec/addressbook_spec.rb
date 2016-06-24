require 'spec_helper'


describe "AddressBook class" do
  it "Should add people into the address book" do
    person1 = Person.new("joe", "blogs", "1 jan 1990")
    person2 = Person.new("andy", "nother", "2 Jan 1995")
    book = AddressBook.new
    book.add(person1)
    book.add(person2)
    expect(book.address_book.length).to eq 2
  end

  it "Should raise error when adding a non object of class person" do
    book = AddressBook.new
    expect{book.add(1)}.to raise_error(ArgumentError)
  end

  it "Should add people into the address book from family members" do
    family1 = FamilyMember.new("joe", "blogs", "1 jan 1990")
    family2 = FamilyMember.new("andy", "nother", "2 Jan 1995")
    book = AddressBook.new
    book.add(family1)
    book.add(family2)
    expect(book.address_book.length).to eq 2
  end

end
