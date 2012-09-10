player1 = "larry"
player1_health = 60

player2 = "curly"
player2_health = 125

player3 = "moe"
player3_health = 100

player4 = "shemp"
player4_health = 90

player2 = "curly"

player3 = "moe"

time = Time.new()

puts "The game started on #{time.strftime("%A %m/%d/%y at %I:%M%p")}"
puts "#{player1.capitalize}'s health is #{player1_health}"
puts "#{player2.upcase} has a helth of #{player2_health}"
puts "#{player3.capitalize} has a health of #{player3_health}".center(50, '*')
puts "#{player4.capitalize.ljust(30, '.')} #{player4_health} health"

puts "Players: \n\t#{player1}\n\t#{player2}\n\t#{player3}"

player2_health = player1_health

puts "#{player2.upcase} has a helath of #{player2_health}"

player1_health = 30

puts "#{player1.capitalize}'s health is #{player1_health}"
puts "#{player2.upcase} has a health of #{player2_health}"
