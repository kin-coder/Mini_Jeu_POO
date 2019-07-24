require 'pry'


class Player

	attr_accessor  :name, :life_points, :le_nombre_de_dommages_subit


	def initialize(name)

		@name = name
		@life_points = 10

		return @name
		return"#{@name} a #{@life_points} points de vie"
	end


	def show_state

		
		if @life_points <= 0

			return " #{@name} a été tué!, vous avez #{@life_points} vie!"
		  	
		  else

		  	return "#{@name}, avez encore #{@life_points} vies, continuez!"  
		
		end
	end



	def gets_damage(le_nombre_de_dommages)

		 @life_points -= le_nombre_de_dommages  # le nomdre de vie restant
		
		return @life_points
	end


	def attacks(player_name)


		puts "#{name} attaque #{player_name.name}" # nom anlay player

		coup = compute_damage

		puts "#{name} lui inflige #{coup} points de dommages!!!"
		
		player_name.gets_damage(coup) # on prend le nombre de damage du player
		
	end


	def compute_damage

		return rand(1..6) # chiffre aleatoire

	end
end



class HumanPlayer < Player

	attr_accessor  :weapon_level 
	

	def initialize(name)
	super(name)
		@name = name
		@life_points = 20 #100
		@weapon_level = 1
	end


  	def compute_damage

    	rand(1..6) * @weapon_level
  	end

  	def search_weapon

  		dE = rand(1..6)

  		puts "Tu as trouvé une arme de niveau #{dE}"

  		if @weapon_level < dE

  			@weapon_level = dE

  			puts"Youhou ! elle est meilleure que ton arme actuelle : On la prends."
  			
  		elsif @weapon_level >= dE

  			puts"Elle est moins bonne, gardons nos armes!!!"
  		end

  	end

  	def search_health_pack

  		dEE = rand(1..6)

  		if dEE ==1

  			puts"Tu n'as rien trouvé... "

  			
  		elsif dEE>=2 && dEE <=5

  			@weapon_level += 20 #50

  			puts "Bravo, tu as trouvé un pack de +50 points de vie !" 

  		elsif dEE==6

  			@weapon_level += 50	#80			
  			
  			puts "Bravo, tu as trouvé un pack de +80 points de vie !"
  		end
  			
  	end

end
 




