class PlaylistSong < ActiveRecord::Migration
  def change
  	create_table :playlists_songs do |t|
  		t.references :playlist, foreing_key: true
  		t.references :song,     foreing_key: true
  	end
  end
end
