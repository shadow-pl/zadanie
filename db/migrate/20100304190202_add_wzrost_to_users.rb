class AddWzrostToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :wzrost, :integer
  end

  def self.down
    remove_column :users, :wzrost
  end
end
