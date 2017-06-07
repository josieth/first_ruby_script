@contact_array = []

def print_menu
  puts "-- Contact List Menu --"
  puts " 1) Create Contact"
  puts " 2) All Contacts"
  puts " 3) Delete"
  puts " 4) Quit"
  answer = gets.chomp.to_i
  contact_menu(answer)
end

def create_contact
  puts "What's the contact's name?"
  name_contact = gets.chomp
  @contact_array << name_contact
  puts "#{name_contact} has been added to the contact list."
  puts @contact_array
  print_menu
end

def all_contact
  puts @contact_array
  print_menu
end

def delete_contact
  puts "What contact do you want to delete?"
  name_contact = gets.chomp
  @contact_array.delete(name_contact)
  print @contact_array
  print_menu
end

def contact_menu(answer)    #case loop
  case answer
  when 1
    create_contact
  when 2
    all_contact
  when 3
    delete_contact
  when 4
    puts "Fine, I didn't want to see you anyway."
  else
    puts "There are only four choices bro."
    print_menu
  end
end

print_menu