	class Piece 
		attr_accessor :color, :name, :position, :destination 
		def initialize(color, name, position, destination) 
			@color = color
			@name = name
			@position = position
			@destination = destination
		
		end
	end


	class Rook < Piece
		def validate_horizontally
			@position[1]==@destination[1]
		end
		def validate_vertically
			@position[0]==@destination[0]
		end

		def validate_movement
			if validate_horizontally || validate_vertically
				puts "LEGAL"
			else
				puts "ILLEGAL"
			end
		end
	end

	class Bishop < Piece
		def validate_horizontally
			@position[1]!= @destination[1]
		end
		def validate_vertically
			@position[0]!= @destination[0]
		end

		def validate_movement_bishop
			if validate_horizontally && validate_vertically
				puts "LEGAL"
			else
				puts "ILLEGAL"
			end
		end
	end


	class Queen < Piece
		def validate_horizontally
			@position[1]!= @destination[1] || @position[1]==@destination[1]
		end
		def validate_vertically
			@position[0]!= @destination[0] || @position[0]==@destination[0]
		end

		def validate_movement_queen
			if validate_horizontally && validate_vertically
				puts "LEGAL"
			else
				puts "ILLEGAL"
			end
		end
	end


	class king < Piece 
	#ES COMO LA REINA...CÓMO MARCAR UN MOVIMIENTO A LA VEZ? 
		def validate_horizontally
			@position[1]!= @destination[1] || @position[1]==@destination[1]
		end
		def validate_vertically
			@position[0]!= @destination[0] || @position[0]==@destination[0]
		end

		def validate_movement_queen
			if validate_horizontally && validate_vertically
				puts "LEGAL"
			else
				puts "ILLEGAL"
			end
		end
	end



	class Pawn < Piece 
	#...PUEDE MOVER EN DIAGONAL PARA ELIMINAR	
	#...CÓMO MARCAR UN MOVIMIENTO A LA VEZ? 
	#...NO PUEDE IR ATRÁS...CÓMO MARCAR ESO?
		def validate_horizontally
			@position[1]!= @destination[1] || @position[1]==@destination[1]
		end
		def validate_vertically
			@position[0]!= @destination[0] || @position[0]==@destination[0]
		end

		def validate_movement_queen
			if validate_horizontally && validate_vertically
				puts "LEGAL"
			else
				puts "ILLEGAL"
			end
		end
	end


	class knight < Piece
		#...COMO TORRE...
		#...3 MOVIMIENTOS MAXIMOS EN VERICAL.....(CÓMO SE HACE?)
		#...2 MOVIMIENTOS MAXIMOS EN HORIZONTAL..(CÓMO SE HACE?)
		def validate_horizontally
			 @position[1] == @destination[1] #2.times
		end
		def validate_vertically
			@position[0] == @destination[0] #3.times 
		end

		def validate_movement_bishop
			if validate_horizontally && validate_vertically
				puts "LEGAL"
			else
				puts "ILLEGAL"
			end
		end
	end






	# class Board

	# 	def initialize
	# 	@board = Board.new(8,8)
	# 	end



	# 	@Board[0,0] = Piece.new (:black, :rook)    #bR......a8
	# 	@Board[1,0] = Piece.new (:black, :knight)  #bKI.....b8
	# 	@Board[2,0] = Piece.new (:black, :bishop)  #bB......c8
	# 	@Board[3,0] = Piece.new (:black, :queen)   #bQ......d8
	# 	@Board[4,0] = Piece.new (:black, :king)    #bKI.....e8
	# 	@Board[5,0] = Piece.new (:black, :bishop)  #bB......f8
	# 	@Board[6,0] = Piece.new (:black, :knight)  #bK......g8
	# 	@Board[7,0] = Piece.new (:black, :rook)    #bR......h8


	# 	@Board[0,7] = Piece.new (:white, :rook)    #wR......a1
	# 	@Board[1,7] = Piece.new (:white, :knight)  #wKI.....b1
	# 	@Board[2,7] = Piece.new (:white, :bishop)  #wB......c1
	# 	@Board[3,7] = Piece.new (:white, :queen)   #wQ......d1
	# 	@Board[4,7] = Piece.new (:white, :king)    #wKI.....e1
	# 	@Board[5,7] = Piece.new (:white, :bishop)  #wB......f1
	# 	@Board[6,7] = Piece.new (:white, :knight)  #wK......g1
	# 	@Board[7,7] = Piece.new (:white, :rook)    #wR......h1

	# end

                #:color, :name, :position, :destination
                                   #x, y    #x, y
rook = Rook.new("black", "rook", [0, 6], [0, 5]) 
# bishop = Bishop.new("black", "rook", [5, 7], [5, 6])
#queen = Queen.new("black", "rook", [5, 7], [4, 6])

rook.validate_movement


