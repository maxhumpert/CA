class SetDefaultOnPoints < ActiveRecord::Migration
  def self.up
    change_column :users, :points, :integer, :default => 10
  end
end
