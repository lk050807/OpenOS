#MakeUser
class MakeUser
	def initialize()
		print "User name? "
		@username=gets.chomp
		print "password? "
		@password=gets.chomp
        print "Confirm password? "
        @confirm=gets.chomp
        if @password==@confirm
            print "Creating user #{@username}"
            File.open('./users.txt', 'w') { |file| file.write("username: #{@username}, password: #{@password}")}
        else
            puts "Passwords do not match"
            end
    end
end
MakeUser.new