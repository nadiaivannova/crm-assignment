def initialize(first_name, last_name, email, notes = 'N/A')
  @first_name = first_name
  @last_name  = last_name
  @email      = email
  @notes      = notes
  @id         = @@next_id

  @@next_id += 1
end

def self.create(first_name, last_name, email, notes = 'N/A')
  new_contact = Contact.new(first_name, last_name, email, notes)
  @@contacts << new_contact
  return new_contact
end

def self.all
  @@contacts
end

def self.find(id)
@@contacts.each do |contact|
  if contact.id == id
  return contact.full_name
  end
end
end

def update(field, new_value)
case field
when "first_name"
  self.first_name = new_value
when "last_name"
  self.last_name = new_value
when "email"
  self.email = new_value
when "notes"
  self.notes = new_value
else
  puts " Error, please try again"
end
end

def self.find_by(attribute, value)
@@contacts.each do |contact|
  if attribute == "first_name" && value ==        contact.first_name
    return contact.full_name
  elsif attribute == "last_name" && value == contact.last_name
    return contact.full_name
  elsif attribute == "email" && value == contact.email
  elsif attribute == "notes" && value == contact.notes
    return contact.full_name
  else
    puts "Error, please try again."
  end
end
end

def self.delete_all
@@contacts.clear
end

def full_name
"#{ @first_name } #{ @last_name }"
end

def self.delete(contact)
@@contacts.delete(contact)
end

end
