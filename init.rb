require_relative 'lib/car'

print "Make: "
make = gets.chomp

print "Year: "
year = gets.chomp

print "Color: "
color = gets.chomp

car = Car.new(:make => make, :year => year, :color => color)

puts "I understand that you want to purchase:
#{car.full_name}"



