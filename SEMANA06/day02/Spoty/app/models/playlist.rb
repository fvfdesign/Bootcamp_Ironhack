class Playlist < ActiveRecord::Base
  

  #belongs_to :user
  has_and_belongs_to_many :songs

  #has_many :songs, through: playlist_songs(para referenciar modelos)
end
