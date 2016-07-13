class AddAlbumToSongs < ActiveRecord::Migration
  def change
  	add_column :songs, :album_id, :integer
  	#add_column :songs, :album_id, :references
  end
end


#añadir Album_id reference // FOREIGN KEY