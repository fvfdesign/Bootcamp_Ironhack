class AddArtistToAlbum < ActiveRecord::Migration
  def change
  	add_column :album, :artist_id, :integer
  end
end
