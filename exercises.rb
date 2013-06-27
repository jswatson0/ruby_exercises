
#  Exercise 2 
def calc_1(operator, num1, num2)
	if operator == "*"
		return num1.to_f * num2.to_f
	elsif operator == "/"
		return num1.to_f / num2.to_f
	elsif operator == "+"
		return num1.to_f + num2.to_f
	elsif operator == "-"
		return num1.to_f - num2.to_f
	end
end

# Exercise 4

#This works, but only if movie is typed exactly correct.. need to figure out how to add a downcase 
# method or somthing.
def is_movie_available_1(name)
	movies = ["Thor", "Captain America", "Hulk", "Iron Man"]
	
	if movies.include?(name)
		puts "yes"
	else
		puts "Not playing here"
	end
end

# Exercise 5

#This works, but I want to be able to indicate if the movie is playing but just not at the 
#specified time.. Also make provisions for upcase/downcase and spelling varriations
def is_movie_available_2(name, time)
  movie_timings = {
    "Thor" => [0100, 0400, 0600, 1200, 1400, 1830],
    "Captain America" => [400, 845, 1115, 1430, 1940, 2130, 2300],
    "Hulk" => [ 1200, 1500, 1830, 2200],
    "Iron Man" => [1315, 1645]
    }
      if 
        movie_timings[name].include?(time)
        #movie_timings.keys.include?(name)  
        #then check the name's array of values..
        puts "yes"	
      else
        puts "no"
  end
end

# Exercise 9

def guess_number_1
  random_number = rand(100) # rand gives random number between 0 and x-1
  # puts random_number
  puts "Guess a number any number"
  num = gets.chomp.to_i
    if num == random_number
      puts "You nailed it!"
    else 
      puts "Try again."
  end
end

# Exercise 10

def guess_number_2
    random_number = rand(100) # rand gives random number between 0 and x-1
    #puts random_number
    puts "Guess a number any number"
    num = gets.chomp.to_i
      until num == random_number
        puts "Guess again."
        num = gets.chomp.to_i
      end
      if num == random_number
        puts "Wow!"
      end
    # TODO: Allow the user to continuously guess until he/she gets it right
end

# Exercise 11

def guess_number_3
    random_number = rand(100) # rand gives random number between 0 and x-1
    # TODO: Same as guess_number_2 but tell the user how many times they tried
    #puts random_number
    counter = 0
    puts "Guess a number any number"
    num = gets.chomp.to_i
      until num == random_number
        puts "Guess again."
        num = gets.chomp.to_i
        counter += 1
      end
      if num == random_number
        puts "Wow! it took you #{counter} try's to figure this out."
      end
end

def guess_number_4
  random_number = rand(100) # rand gives random number between 0 and x-1
  #puts random_number
  counter = 0
  puts "Guess a number any number"
  # TODO: Same as guess_number_3 but tell the user whether the real number is higher or lower
  num = gets.chomp.to_i
  until num == random_number
    
    if num < random_number
      puts "Your low"
    else
      puts "Your high.. Not like that.."
    end 
    puts "Guess again."
    
    num = gets.chomp.to_i
    counter += 1
  end
    if num == random_number
      puts "Wow! it took you #{counter} try's to figure this out."
    end   
  end

# Exercise 14

def countdown(count)
    # print out numbers from count to 0
  while count >= 0
    puts count
    count -= 1
  end  
end

#Exercise 15

def countup(count)
  i = 0
  while i <= count
    puts i
    i += 1
  end
end

# Exercise 16

def fizz(count)
  while count >= 0
    puts count
    count -= 1 
    if count % 3 == 0
      puts "fizz"
    end    
  end
end

# Exercise 23

def ask_questions

  puts "Hello friend! What is your first name?"
    @first = gets.chomp
  puts "Great #{@first}, I also need to know your last name."
    @last = gets.chomp
  puts "What is your age #{@first}?"
    @age = gets.chomp.to_i
  puts "Your name is #{@first} #{@last} and you are #{@age} years old."

end

# Exercise 24

def lease_generator
  puts "Lets fill out your lease."
  puts "Enter your full name."
    @full_name = gets.chomp
  puts "Who will you be leasing from?"
    @leaser = gets.chomp
  puts "What is the street address of the unit you will be leasing?"
    @street = gets.chomp
    puts "Enter city and state in 'city, state' format."
    @city_state = gets.chomp
    puts "Enter zip"
    @zip = gets.to_i
  puts "How many months will you be leasing with #{@leaser}?"
    @term = gets.to_i
  puts "What will the monthly rate be in dollars?"
    @rate = gets.to_i

  puts "Below is the lease agreement. Please read carfully and sign at the end."
  puts "I, #{@full_name} do agree to pay #{@leaser} #{@rate} dollars per month for #{@term} months to lease #{@street} #{@city_state} #{@zip}.\nThe total rent for #{@term} months will be #{@rate*@term} dollars."
    
end

# Exercise 25
def siri_calc
  puts "give me a number"
    @num_1 = gets.to_f
  puts "give me another number"
    @num_2 = gets.to_f
  puts "What opperator do you want to apply to #{@num_1} and #{@num_2}?"
    @opperator = gets.chomp
  return @num_1.send(@opperator, @num_2)
end

# Exercises 26

def garage_sale
  garage_items = ["computer", "couch", "black backpack", "rolling desk chair", "table", "blender"]

  sorted_garage_items = garage_items.sort
  puts "sorted garage items:"
  sorted_garage_items.each_with_index do |item, index|
    puts "#{index+1}) #{item.capitalize}"
  end
  reversed_garage_items = garage_items.reverse
  puts "revesed garage items:"
  reversed_garage_items.each_with_index do |item, index|
    puts "#{index+1}) #{item.capitalize}"
  
  end
end

# Exercise 27

def ticket_counter
  counter = 0
  tickets = ['jason', 'sarah', 'jim', 'lilly']

  puts "We've sold #{tickets.count} tickets"

  tickets.collect do |ticket| # collect returns updated array
    puts "Welcome, #{ticket.capitalize}"
    
    ticket.capitalize
  end
end

# Exercise 28

def smiths

  smith_family = ["John", "Jane", "Jacob"]
  last = "Smith"
  x = smith_family.collect do |first|
    first + " " + last
  end
  
  puts x.inspect
end

# HASHES

# empty hash
hash = {}

# keys and values can be anything
hash = { :key => 'value' , 4.5 => :four , 'string' => 4 , 'string' => 'string' }

#add key value pair
hash[5] = 'five'

#add an array as a value
x = [5,3,2]
hash[x] = :array

# TODO: Use the merge method to put together the 2 given hashes into another variable
hash1 = {"XBox" => "Microsoft", "PS" => "Sony"}
hash2 = {"Macbook" => "Apple", "Windows 8" => "Microsoft"}

  hash1.merge! hash2

# use each_pair loop
    # hash1.each_pair do |key, value|
    #   puts "#{key} is #{value}"
    # end

#print values without using loop
# hash1.values

# TODO: Print each of the values in the hash. Use the keys (don't use loops)

def call
  hash_4 = {
      "name" => {
          :first => "Louis",
          :last => "The Thirteenth"
      },
      "father" => {
          "name" => {
              :first => "Louis",
              :last => "The Twelvth"
          },
          "father" => {
              "name" => {
                  :first => "Louis",
                  :last => "The Eleventh"
              },
              "father" => "You've gotta be kidding me!"
          }
      }
  }
  puts "#{hash_4['name'][:first]}" + "#{hash_4['name'][:last]}"
  puts "#{hash_4['father']['name'][:first]}" + "#{hash_4['father']['name'][:last]}"
  puts "#{hash_4['father']['father']['name'][:first]}" + "#{hash_4['father']['father']['name'][:last]}"
end


# TODO: Use an each loop on the outter array and print out the information about each
# of my friends.
def call_friends
  my_friends = [
      {
          :name => "Bob",
          :occupation => "Builder"
      },
      {
          :name => "Dora",
          :occupation => "Explorer"
      },
      {
          :name => "Mandy",
          :occupation => "Handy(wo)man"
      },
  ]
  my_friends.each do |friend|
    puts "#{friend[:name]} is a #{friend[:occupation]}" 
  end
end

# 18

def garage_inventory
  inventory = []
  inventory << {name: 'computer', price: '100.00', quantity: 1}
  inventory << {name: 'book', price: 3.50, quantity: 5.0}
  puts "  Item  |  Price  |  Quantity  "
  inventory.each do |item|
    puts "#{item[:name]} | #{item[:price]} | #{item[:quantity]}"
  end
  
  puts "Total inventory = #{inventory.count} items"
  
  counter = 0
  inventory.each do |item|
    counter += 1
    puts "The total value of item #{counter} is #{item[:price] * item[:quantity]}"
  end
  # Still need to figure out total value of inventory..
end

# Methods

def profile(my_name, my_age, my_gender)
    # TODO: This profile should provide more information based on the
    # person's name, age, and gender
    puts "<h1>#{my_name}</h1>"
    puts "<p>#{my_age}#{my_gender}</p>"
    puts "<img>Image<img>"
end

def multiply_2_numbers_and_print(x, y)
    puts "#{x*y}"
end

def multiply_2_numbers_and_return(x, y)
    return x*y
end

def multiply_4_numbers_and_return(a, b, c, d)
    return a*b*c*d
end

def log_in
  password_saved = "Shehzan_is_awesome"
  # TODO:
  # 1) Ask User for password
  puts "Please enter password"
 
  # 2) Get an input from the user for password 
  user_pass = gets.chomp
  # 3) while the user's input is incorrect, print an error message and ask for it again
  until user_pass == password_saved
    puts "password incorrect"
    puts " Please enter password"
    user_pass = gets.chomp
    if user_pass == password_saved
      puts "Welcome"
    end
  end
end

def sign_up
  puts "What's your username"
  username = gets.chomp
  puts "What's your password"
  password = gets.chomp
  # TODO: until the password is greater than 8 characters, ask the user
  # to input another password
  until password.length >= 8
  	puts "Your password must be at least 8 characters"
  	puts "please enter your password"
  	password = gets.chomp
  	if password.length >= 8
  		puts "Your password is saved"
  	end
  end
end

def sign_up_confirm
  puts "What's your username"
  username = gets.chomp
  puts "What's your password"
  password = gets.chomp
  while password.length < 8
	  puts "Your password must be at least 8 characters"
	  puts "please enter your password"
	  password = gets.chomp
	    if password.length >= 8
		    puts "Your password is saved"    
        puts "Confirm the password"
        password_confirmation = gets.chomp
  while password_confirmation != password
  	puts "Your passwords do not match"
  	puts "enter password"
  	password_confirmation = gets.chomp
      if password_confirmation == password
  	     puts "Welcome"
       end
     end
   end
 end
end

def nag(sentence)
    10.times do |i|
        puts i.to_s + " " + sentence
    end
end

class Chimp

	def initialize(name)
		@bannanna_counter = 0
		@name = name
		@is_clean = true
	end
	def yell
		puts "Monkey sounds"
	end

	def eat
		@bannanna_counter += 1
		puts "Bannannas"
		puts "#{@name} has eaten #{@bannanna_counter} bannannas"
		puts "Now i need to poop."
		@is_clean = false
	end

	def groom
		if @is_clean == false
			puts "Time for a bath"
			@is_clean = true
			puts "All clean!"
		else
			puts "I'm all clean"
		end
	end
end

class BankAccount
	attr_accessor :balance, :loan_amt, :name
	def initialize(name, balance)
		@balance = balance
		@loan_amt = 0.00
		@name = name
	end

	def deposit(deposit)
		puts "#{@name}, your previous balance was #{@balance}"
		@balance += deposit
		@balance = @balance.round(2)
		puts "#{@name}, your new balance is #{@balance}" 
	end

	def withdraw(withdraw)
		puts "#{@name}, your previous balance was #{@balance}"
		@balance -= withdraw
		@balance = @balance.round(2)
		puts "#{@name}, your new balance is #{@balance}" 
	end

	def get_balance
		puts "Your current balance is #{@balance}"
	end

	def take_loan(amt)
		@loan_amt += amt
	end

	def repay_loan(amt)
		@loan_amt -= amt
	end

	def accrue_interest
		@loan_amt += @loan_amt*0.06
	end

	def total_amt_in_bank
		puts "Your current balance is #{@loan_amt + @balance}"
	end

	def self.transfer_money(acct_1, acct_2, amount)
		acct_1.withdraw_money(amount)
		acct_2.deposit_money(amount)
	end
end




