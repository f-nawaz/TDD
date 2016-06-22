class Person
  attr_reader :dob, :first_name, :sur_name, :emails, :phone_numbers

  def initialize(fname, sname, dob = nil)
    @first_name =fname.capitalize
    @sur_name = sname.capitalize
    @dob = Date.parse(dob) if dob
    @emails = []
    @phone_numbers  = []
  end

  def fullname
    "#{first_name} #{sur_name}"
  end

  def add_email(email)
    @emails << email
  end

  def add_phone(phone)
    @phone_numbers << phone
  end

  def remove_email(index)
    @emails.delete_at(index)
  end

  def remove_phone(index)
    @phone_numbers.delete_at(index)
  end
end
