require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'



puts "-------------------------------------------------"

puts " |Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"

puts" |Le but du jeu est d'être le dernier survivant !|"

puts "-------------------------------------------------"


puts "Quel est votre nom:"

nom = gets.chomp

user = HumanPlayer.new(nom)

player1 = Player.new("nam")
	
player2 = Player.new("chrys")

enemies =["#{player1.name}","#{player2.name}"]

		


		while user.life_points > 0 && (player1.life_points>0 || player2.life_points>0)
	
			 player1.attacks(user)

		 	 user.attacks(player1)

		 	 player2.attacks(user)

		 	 user.attacks(player2)


		 	 puts user.show_state


		 	 puts "Quelle action veux-tu effectuer ?"
		 	 puts "a - chercher une meilleure arme ? (1)"
		 	 puts "s - chercher à se soigner (2)" 

		 	 a = gets.chomp.to_i


		 	 case a
		 	 	when 1
		 	 		
		 	 		user.search_weapon
		 	 	
		 	 	when 2

		 	 		user.search_health_pack

		 	 end


		 	 break if player1.life_points<=0 || player2.life_points<=0 || user.life_points<=0

		end


		if user.life_points> player1.life_points && user.life_points> player2.life_points
	
			puts "BRAVO ! TU AS GAGNE !"

		else

			puts "Loser ! Tu as perdu !"

		end









