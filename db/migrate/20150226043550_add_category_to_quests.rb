class AddCategoryToQuests < ActiveRecord::Migration
  def change
    add_column :quests, :category, :Category
  end
end
