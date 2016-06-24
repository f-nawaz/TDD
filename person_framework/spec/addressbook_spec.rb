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

  it "should list the address book when using the method list" do
    skip "no idea how to format it"
    book = AddressBook.new
    person1 = Person.new("joe", "blogs", "1 jan 1990")
    person2 = Person.new("andy", "nother", "2 Jan 1995")
    book.add(person1)
    book.add(person2)
    expect(book.address_book).to eq "Address Book\n------------\nEntry 1: Joe Blogs\nEntry 2: Andy Nother"
  end

  it "Should add people to addressbook from external file" do
    book = AddressBook.new
    book.load_YAML('../../basic-ruby/phonebook/phonebook.yml')
    expect(book.address_book.size).to eq 3
    expect(book.address_book.last).to be_a Person
    expect(book.address_book.last.fullname).to eq "Qasim Khan"
    expect(book.address_book.last.emails.first).to eq "qasim@hotmail.com"

  end



end
