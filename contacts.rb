class Contact
  attr_accessor :first_name, :last_name, :phone_number, :email
  
  def initialize (name, phone_number, email)
    @name = name
    @phone_number = phone_number
    @email = email
  end

  def to_s
    "#{name} #{phone_number} #{email}"
  end
end
