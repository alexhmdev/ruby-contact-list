require "colorize"
class ContactList
    def initialize
        @contacts = Hash.new
    end

    def add_contact(name, num)
        if @contacts.has_key? name
          puts "That name already exist".red.bold
        else  
        @contacts.store(name, num)
        end
    end
    
    def contact_list
        if @contacts.length == 0
            puts "You don't have any contacts yet".red
        else
            @contacts.each do |key, val|
                puts "#{key.green}: #{val}"
            end
        end
        
    end

    def find_number(contact)
        puts "The #{contact.blue} number is #{@contacts[contact]}"
    end

    def mod_contact_name(contact, new_name)
        if @contacts.has_key? contact
            @contacts[new_name] = @contacts.delete contact
        else
            puts "That name doesn´t exist".red.bold
        end
    end
    
    
    def mod_contact_num(contact, new_num)
        if @contacts.has_key? contact
            @contacts[contact] = new_num.to_i
        else
            puts "That name doesn´t exist".red.bold
        end
    end

    def remove_contact(contact)
        if @contacts.has_key? contact
        @contacts.delete contact
        else 
            puts "That contact doesn't exist".red
        end    
    end

    def clear_contacts
        @contacts.clear
    end
end