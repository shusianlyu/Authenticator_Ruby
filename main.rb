users = [ {username: "mashrur", password: "password1"}, {username: "jack", password: "password2"}, {username: "arya", password: "password3"}, {username: "jonshow", password: "password4"}, {username: "heisenberg", password: "password5"}, ]

def auth_user(username, password, user_list)
  for item in user_list
    if ((item[:username] == username) &&(item[:password] == password))
      return item
    end
  end
  "Credentials were not correct"
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back to the user object"

continue = TRUE
attempts = 1

while continue && attempts < 4
  print "Please enter username: "
  user_name = gets.chomp
  print "Please enter password: "
  password = gets.chomp
  authentication = auth_user(user_name, password, users)
  puts authentication
  puts "Press n to quit or any other key to continue: "
  input = gets.chomp
  puts
  if input.downcase == 'n' 
    continue = FALSE
  else
    continue = TRUE
  end
  attempts += 1
end
puts "You have exceeded the number of attempts" if attempts == 4
