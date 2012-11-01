require 'date'

class PersonalChef

	def oven_preheat(degrees)
		if degrees < 150
			puts "Not hot enough yet"
		elsif degrees <= 200
			puts "Getting there"
		else degrees >= 200
			puts "Lets start baking"
		end
		return self
	end

	def countdown(counter)
		until counter == 0
			puts "The counter is #{counter}"
			counter = counter - 1
		end
		counter == 0 
		  puts "Kabboooom!"
		return self		
	end
				

	def inventory
		produce = { apples: 3, oranges: 1, carrots: 12 }
		produce.each do |item, quantity|
			puts "There are #{item} #{quantity} in the fridge"
		end
	end

	def water_status(minutes)
		if minutes < 7
			puts "The water is not boiling yet."
		elsif minutes == 7
			puts "It's just barely boiling"
		elsif minutes == 8
			puts "It's boiling!"
		else
			puts "Hot! Hot! Hot!"
		end
		return self
	end
	
	def make_toast(color)
		if color.nil?
			puts "How am I supposed to make nothingness toast?"
		else
		    puts "Making your toast how you like it, #{color}, sir!"
		end
		return self
	end

	def make_eggs(quantity)
		quantity.times do
		puts "I'm making #{quantity} eggs for you, sir!"
	end
	    puts "I'm done!"
		return self		
	end

	def make_milkshake(flavor)
		puts "Making your #{flavor} Milkshake, sir"
		return self	
	end

	def good_morning
		today = Date.today.strftime("%A")
		day_of_year = Date.today.yday.to_s
		puts "Happy " + today + "! It is the " + day_of_year + " day of the year!"
	end

	def gameplan
        meals = ["breakfast", "Lunch", "Dinner", "Dessert"]
        meals.each do |meal|
        puts "We'll have #{meal}..."
      end

       all_meals = meals.join(", ")
       puts "In summary: #{all_meals}"
    end
end

class Butler
	def open_front_door
		puts "Opening the front door, sir!"		
	end

	def open_door(name)
		puts "Opening the #{name} door, sir"
	end
end
