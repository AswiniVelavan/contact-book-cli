require_relative "contacts"

class ContactBook
  def initialize
    @contact_book = []
  end

  def options
    loop do
      puts "Welcome to Contact Book app!"
      puts "1. Add Contact"
      puts "2. View Contacts"
      puts "3. Exit"
      
      puts "Please Choose an Option"
      option = gets.chomp.to_i

      case option
        when 1
          add_contact
        when 2
          view_contacts
        when 3         
          
          puts " Thank You for visting Contact Book app have a great day! "
          break
        else
          puts "Invalid option please try again"
        end
      
    end
  end


    private

    def add_contact
      puts "Enter the  name "
      name = gets.chomp      
      puts "Enter the 10 digit phone number"
      phone_number = gets.chomp
      puts "enter the email address "
      email = gets.chomp
      @contact_book << Contact.new(name, phone_number, email)
      puts "contacts added sucessfully"
    end
        
    def view_contacts
      puts "The contacts in the list"
      @contact_book
    end  
end
