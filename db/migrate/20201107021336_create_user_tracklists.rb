class CreateUserTracklists < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tracklists do |t|
      t.integer :user_id
      t.integer :tracklist_id

      t.timestamps
    end
  end
end
