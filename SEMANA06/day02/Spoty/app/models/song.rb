class Song < ActiveRecord::Base
	belongs_to :album
	belongs_to :artist
	has_and_belongs_to_many :playlists
	#has_and_belongs_to_many :playlist
end
