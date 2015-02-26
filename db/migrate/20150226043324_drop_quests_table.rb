class DropQuestsTable < ActiveRecord::Migration
  def change
    drop_table :quests
  end
end
