

# name game ************************
#Only exits if your name is david
# name = ""
# while name != "david"
# puts 'hello what\'s your name?'
# name = gets.chomp

# if name == 'josh'
# 	puts "you have a great name!"
# elsif name == 'linda'
# 	puts "you have a wonderful smile"
# elsif name == "david"
# 	puts 'thats and OK name - I\'ll end here'
# elsif name == "john"
# 	puts " I guess that an OK name..."
# else puts "oh, how sad..."
# end
# end 


# choices game ************************
# puts "do you want to go left or right?"
# choice1 = gets.chomp
# left or right choice
# if choice1 == 'left'
# 	#elevator choice
# 	puts "good choice. now you approach an elevator, do you want to take it?"
# 	elevator = gets.chomp
# 	if elevator == "yes"
# 		puts "sorry, out of order"
# 	elsif puts "ok, then keep walking"
		
# 	end
# elsif choice1 == 'right'
# 	puts "OK, you walk down the hall until you see a door"
# else3 puts "you have to decide to go right or left"

# end

# while loop game ************************

# input = ""
# while input != "bye"
# 	puts input
# 	input = gets.chomp
# end
# puts "come again soon"

# while true
# 	puts "Enter a word"
# 	input = gets.chomp
# 	puts input
# 	if input == 'bye'
# 		break
# 	end
# end

# Leap Year Program **************************

#Ask for start and end year
# puts "Please enter a start year"
# startYear = gets.chomp
# puts "Please enter an end year"
# endYear = gets.chomp

# #Find the number of leaps years between them
# #years devisible by 100 are not leap years but years divisible by 400 are leap years

# endLeapYears = endYear.to_i / 4

# startLeapYears = startYear.to_i / 4

# puts "There are this many leap years between the 2 dates"
# puts diffYears = endLeapYears - startLeapYears 

# find how many leap years in last date. Take number mod 4 to find remainer... subtract this remainder 
# from the value to find the first leap year. divide by 4 to find the total number of leap years
# find how many leap years in first date 
# subtract years that are divisible by 100 by using mod 100 and subtracting that value from the total 
# Add years divisible by 400 similar to 100 approach  mod 400
# account for years included by subtracting 1 from lower date

# Building and sorting an Array pg 56 

# puts 'enter as many words as you want, or press enter'

# array = []
# x=0
# word = "none"
# while word != ""
# 	word = gets.chomp
# 	array[x] = word
# x+=1
# end
# puts array.sort 

# Table of Contents Example

# toc = ['Table of Contents', 'Chapter 1: Getting Started', 'page 1','Chapter 2: Numbers','page 9',
# 'Chapter 3: Letters','page 13']
# page_width = 60
# puts (toc[0].center(page_width))
# puts ''
# puts (toc[1].ljust(page_width/2) + toc[2].rjust(page_width/2))
# puts (toc[3].ljust(page_width/2) + toc[4].rjust(page_width/2))
# puts (toc[5].ljust(page_width/2) + toc[6].rjust(page_width/2))

# Chapter 9 examples


# Chapter 13 examples

# class Die
# 	def roll
# 		@number_showing = 1 + rand(6)
# 	end

# 	def showing
# 		@number_showing
# 	end
# end

# die = Die.new
# die.roll
# puts die.showing


# class Die
# 	def initialize
# 		set
# 	end

# 	def set
# 		puts "Set number, you cheater."
# 		@number_showing = gets.chomp
# 	end

# 	def roll
# 		@number_showing = 1 + rand(6)
# 	end

# 	def showing
# 		@number_showing
# 	end
# end
# puts Die.new.showing


class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # Hes full
		@stuff_in_intestine = 0 # he doesnt need to go

		puts "#{@name} is born"
	end

	def feed
		puts "you feed #{@name}."
		@stuff_in_belly = @stuff_in_belly + 1
		passage_of_time
	end

	def walk
		puts "you walk #{@name}"
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts "you put #{@name} to bed"
		@asleep = true 
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end
			if @asleep
				@asleep = false
				puts "#{@name} wakes up slowly"
			end
		end
	end
		
	def toss
		puts "you toss #{@name} up into the air"
		puts 'he giggles, which singes your eyebrows.'
		passage_of_time
	end

	def rock
		puts "you rock #{@name} gently"
		@asleep = true
		puts 'he briefly dozes off...'
		passage_of_time
		if @asleep
			@asleep = false
			puts '...but wakes when you stop.'
		end
	end

	def ask |ask|
		ask = gets.chomp
		pet.ask 
	end

	private

	def hungry?
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0  
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
		else
			if @asleep
				@asleep = false
				puts "he suddenly wakes up!"
			end
			puts "#{@name} is starving! In desperation, he are YOU!"
			exits
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops #{@name} has an accident..."
		end

		if hungry?
			if @asleep
				@asleep = false
				puts 'he wakes up suddenly!'
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts 'he wakes up suddenly!'
			end
			puts "#{@name} does the potty dance"
		end
	end
end


pet = Dragon.new 'Norbet'



pet.ask






