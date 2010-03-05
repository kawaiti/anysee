class CreateWhispers < ActiveRecord::Migration
  def self.up
    create_table :whispers do |t|
      t.integer :user_id
      t.string :content
      t.string :geohash

      t.timestamps
    end
    add_index :whispers, :user_id
    add_index :whispers, :geohash
  end

  def self.down
    drop_table :whispers
  end
end
