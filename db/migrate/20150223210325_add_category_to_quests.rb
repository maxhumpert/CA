class AddCategoryToQuests < ActiveRecord::Migration
  def change
    add_column :quests, :cateogry, :Category
  end
end
