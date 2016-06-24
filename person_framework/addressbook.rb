require 'yaml'

class AddressBook
  attr_reader :address_book
  def initialize()
    @address_book = []
  end

  def add(person)
    if person.is_a? Person
      @address_book << person
    else
      raise ArgumentError, "Must be a valid object of person class"
    end
  end

  def list
    puts ""
    puts "Address Book"
    puts "------------"
    @address_book.each_wtih_index do |person, i|
      puts "Entry #{i+1}: #{person.full_name}"
    end
  end

  def load_YAML(path)
    # path = "../../basic-ruby/phonebook/phonebook.yml"
    file = YAML.load(File.open(path))
    file["Book"].each do |p|
    person = Person.new(p["fname"], p["lname"], p["dob"])

    p["numbers"].each {|n| person.add_phone(n)}

    p["emails"].each {|e| person.add_email(e)}
      address_book << person
    end
  end



end
