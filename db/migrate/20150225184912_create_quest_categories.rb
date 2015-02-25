class CreateQuestCategories < ActiveRecord::Migration
  def change
    drop_table :quest_categories
    create_table :quest_categories do |t|
      t.integer :quest_id, :null => false
      t.integer :category_id, :null => false

      t.timestamps
    end
  end
end
