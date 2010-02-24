class AddDeletedAtToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :deleted_at, :datetime, :default => nil
  end

  def self.down
    remove_column :users, :deleted_at
  end
end
