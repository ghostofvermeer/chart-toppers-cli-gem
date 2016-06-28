require 'date'

class ChartToppers::CLI

  @@current_time = DateTime.now

  def call
    list_charts
    menu
end

  def list_charts
    puts "1. Billboard"
  	puts "2. Indie Shuffle"
  	puts "3. Hypem"
  	puts "4. Shazam"
  	puts "5. BBC Radio One"
  end

  def menu
  	input = nil
  	puts "Please select a chart by typing 1 - 5"


  	input = gets.strip.to_s

	case input
	when 'charts'
	  list_charts
	  menu	
	when "1"
	  billboard
	  puts "Type 'charts' to select another chart or exit to quit."
	  input = gets.strip
	  if input == "charts"
	  	list_charts
	  	menu
	  end
	when "2"
	  indie_shuffle
	  puts "Type 'charts' to select another chart or exit to quit."
	  input = gets.strip
	  if input == "charts"
	  	list_charts
	  	menu
	  end
	when "3"
	  hypem
	  puts "Type 'charts' to select another chart or exit to quit."
	  input = gets.strip
	  if input == "charts"
	  	list_charts
	  	menu
	  end
	when "4"
	  shazam
	  puts "Type 'charts' to select another chart or exit to quit."
	  input = gets.strip
	  if input == "charts"
	  	list_charts
	  	menu
	  end
	when "5"
	  bbc_radio_one
	  puts "Type 'charts' to select another chart or exit to quit."
	  input = gets.strip
	  if input == "charts"
	  	list_charts
	  	menu
	  end
	
	else 
	  puts "Please select a valid chart from the list. If you'd like to see the list of charts again, type 'charts'."
	  menu
	end
     
  end

  def billboard
  	puts "Billboard Hot 100 on #{self.time.strftime "%d/%m/%Y"}"
    puts "1."
    puts "2."
  end

  def indie_shuffle
  	puts "Indie Shuffle Chart on #{self.time.strftime "%d/%m/%Y"} "
    puts "1."
    puts "2."
  end

  def hypem
  	puts "Hypem Chart on #{self.time.strftime "%d/%m/%Y"}"
    puts "1."
    puts "2."
  end

  def shazam
  	puts "Shazam Chart on #{self.time.strftime "%d/%m/%Y"}"
  	puts "1."
  	puts "2."
  end

  def bbc_radio_one
  	puts "BBC Radio One Chart on #{self.time.strftime "%d/%m/%Y"}"
  	puts "1."
  	puts "2."
  end

  def time
    @@current_time
  end

end