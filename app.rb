require "./contactList.rb"
class App
    def initialize
        @contacts = ContactList.new
    end
    def run
        puts "Welcome"
        loop do
            puts "a - add a new contact".bold
            puts "l - list your contacts".bold
            puts "s - search number".bold
            puts "m - modify contact name".bold
            puts "n - modify contact number".bold
            puts "r - remove a contact".bold
            puts "d - delete all contacts".bold
            puts "e - exit".bold
            puts "what do you want to do?".cyan.bold
            input = gets.chomp
            puts " "
            case input
            when 'e'
                puts "Bye! :)".blue.bold
                break
            when 'a'
                puts "Name:".cyan.bold
                name = gets.chomp
                puts "Number:".cyan.bold
                number = gets.chomp.to_i
                @contacts.add_contact name, number
                puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "press enter to exit".cyan
                exit = gets.chomp
            when 'l'
                puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "press enter to exit".cyan
                exit = gets.chomp 
                
            when 's'    
                puts "Name:".cyan.bold
                name = gets.chomp
                @contacts.find_number name
                puts "press enter to exit".cyan
                exit = gets.chomp
            when 'r'
                puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "which contact do you want to remove?".red
                name = gets.chomp
                @contacts.remove_contact name
                puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "press enter to exit".cyan
                exit = gets.chomp
            when 'd'
                puts "Are you sure you want to delete all your contacts? Y/N".red.bold 
                input = gets.chomp
                if input == "y"
                    @contacts.clear_contacts
                elsif input == "n"
                    puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "press enter to exit".cyan
                exit = gets.chomp
                end
            when 'm'
                puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "Type the name you want to change:".cyan
                name = gets.chomp
                puts "New name:".green
                new_name = gets.chomp
                @contacts.mod_contact_name name, new_name
                puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "press enter to exit".cyan
                exit = gets.chomp
            when 'n'
                puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "Type the name you want to change the number:".cyan
                name = gets.chomp
                puts "New number:".green
                new_num = gets.chomp
                @contacts.mod_contact_num name, new_num   
                puts "Contacts:".blue
                @contacts.contact_list
                puts " "
                puts "press enter to exit".cyan
                exit = gets.chomp
            end    
        end
    end    
end

app = App.new

app.run