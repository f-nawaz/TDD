
class FamilyMember < Person
  attr_accessor :relationship
  def initialize(fname, sname, dob = nil, relationship = "relationship")
      super(fname, sname, dob)
    @relationship = relationship
  end
end
