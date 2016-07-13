class Album < ActiveRecord::Base
	#atributes: 
	#id
	#name
	#update_at
	#created_at

	#relationships: (songs and artist)
	has_many :songs #sera un array
	belongs_to :artist #Sera un object / #ahora becomes methods
end
