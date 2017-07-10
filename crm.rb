require_relative "contact"

class CRM

  def initialize(name)
    @name = name
  end

  def main_menu
    while true # repeat indefinitely
        print_main_menu
        user_selected = gets.to_i
        call_option(user_selected)
      end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit
      return user_selected
   end
  end

  def add_new_contact

    print 'Enter First Name: '
    first_name = gets.chomp

   print 'Enter Last Name: '
   last_name = gets.chomp

   print 'Enter Email Address: '
   email = gets.chomp

   print 'Enter a Note: '
   note = gets.chomp

   return Contact.create(first_name, last_name, email, note)

  end

  def modify_existing_contact
    contact.update
  end

  def delete_contact
    self.delete
  end

  def display_all_contacts
    self.all
  end

  def search_by_attribute
    self.find_by
  end

end
# 
# bitmaker = CRM.new("black_book")
# bitmaker.main_menu
