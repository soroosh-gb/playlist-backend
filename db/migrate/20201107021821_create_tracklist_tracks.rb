class CreateTracklistTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracklist_tracks do |t|
      t.integer :tracklist_id
      t.integer :track_id

      t.timestamps
    end
  end
end
