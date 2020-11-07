class CreateTracklists < ActiveRecord::Migration[6.0]
  def change
    create_table :tracklists do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
