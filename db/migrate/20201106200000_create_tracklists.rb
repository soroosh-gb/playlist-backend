class CreateTracklists < ActiveRecord::Migration[6.0]
  def change
    create_table :tracklists do |t|
      t.integer :user_id
      t.integer :track_id
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
