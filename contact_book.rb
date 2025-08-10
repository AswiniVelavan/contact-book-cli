require_relative "contacts"

class ContactBook
  def initialize
    @contact_book = []
  end

  def options
    loop do
      puts "Welcome to Contact Book app!"
      puts "1. Add Contact"
      puts "2. Delete Contact"
      puts "3. Edit Contact"
      puts "4. View Contacts"
      puts "5. Exit"
      puts "Please Choose an Option"
      option = gets.chomp.to_i

      case option
        when 1
          add_contact
        when 3 
          edit_contact
        when 3
          view_contacts
        when 4
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
      @contact_book << Contact.new(first_name, last_name, phone_number, email)
      puts "contacts added sucessfully"
    end

    def delete_contact
      puts  "Enter the First name "
      name_delte = gets.chomp
      puts "Enter Phone number"
      phone_number_delete = gets.chomp
      puts "Enter the email"
      email_delete =gets.chomp

      
        end


    end
    def view_contacts
      puts "The contact list \n #{@contact_book}"
    end


  
end
