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



end
