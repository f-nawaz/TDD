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


  # def to_s
  #   return "#{fullname} was born on #{@dob.strftime('%F')}.\n Their email addresses are:[#{@emails.join(" , ")}]\n Their phone numbers are [#{@phone_numbers.join(" , ")}]"
  # end

  # def print_details
  #   puts "-" * full_name.length
  #   puts "#{full_name} \n --------- \n Date of Birth: #{@dob.strftime('%d/%m/%y')} \n \n Email Addresses: #{e_addresses} \n Phone Numbers: #{p_numbers} "
  # end

  # def e_addresses
  #   emails.each do |emails|
  #      puts "- #{emails}"
  #    end
  # end
  #
  # def p_numbers
  #   emails.each do |phones|
  #      puts "- #{phone_numbers}"
  #    end
  # end

end
