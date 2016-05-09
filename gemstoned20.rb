require 'readline'

def roll(inputs)
  inputa = inputs.split(/['d','+','\-']/)
  inputa[2] = if inputs.include? '-'
                inputa[2].to_i * -1
              else
                inputa[2].to_i
              end
  k = 0
  print Time.new.inspect
  puts "\nDice: "

  # If there was no declaration for number of dice,
  # default to 1
  inputa[0].to_i == 0 ? (inputa[0] = 1) : ()

  # Roll the dice
  (1..inputa[0].to_i).each do
    i = rand(1..inputa[1].to_i)
    print "\[#{i}\] "
    k = i.to_i + k.to_i
  end
  puts "\nTotal:", k + inputa[2]
end

puts "\nGemstone D20"
puts 'Written by Trent Arcuri'
puts 'https://github.com/shoelaceman'
puts "Press CTRL-C at any time to quit.\n"
loop do
  # Get input from user
  roll(Readline.readline(' > ', true))
end
