
require 'bundler'
Bundler.require


require_relative 'lib/game'
require_relative 'lib/player'

#player1.gets_damage(10)
#player2.gets_damage(3)	
#player3.gets_damage(5)

	
 	player1 = Player.new("nam")
	
	player2 = Player.new("chrys")

	#player3 = Player.new("Menja")

	#player4 = Player.new("Tsiry")

	#player5 = Player.new("Aro")

	#player6 = Player.new("Ronick")



	puts ">>>>>>>>>PRESENTATION DES JOUEURS<<<<<<<<<<<<<<<"
puts
 puts "Et.....Voici nos 2 combatants du jour...!!!"
puts
puts
	puts "*****  #{player1.name} VS #{player2.name} ******"
puts

puts "Voici le statut de chaque JOUEURS:"
puts
puts "#{player1.name} vouz aver #{player1.life_points} points"

puts "#{player2.name} vouz aver #{player2.life_points} points"
#puts player2.name

puts
puts

puts ">>>>>>>>>PLACE AU SOFT COMBAT <<<<<<<<<<<<<<<"
puts

	while player1.life_points>0 && player2.life_points>0

		 player1.attacks(player2)
		 player2.attacks(player1)

		 puts

		puts "Voici l'etat de nos joueurs :"
		 	puts player1.show_state
		 	puts player2.show_state

		 	puts
		 	
		break if player1.life_points<=0 || player2.life_points<=0	
		
		
	end

	puts

puts ">>>>>>>>> LE VAIQUEUR D'AUJOURD'HUI <<<<<<<<<<<<<<<"


puts
puts
if player1.life_points>player2.life_points

			puts "#{player1.name} WINS, #{player1.name} a TOTALEMENT DETRUITE #{player2.name} !!! "
				
			else
			puts "#{player2.name} WINS, #{player2.name} a TOTALEMENT DETRUIT #{player1.name} !!!"
puts
puts


end


binding.pry

	
	

