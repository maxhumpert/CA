class CreateQuestCategories < ActiveRecord::Migration
  def change
    create_table :quest_categories do |t|
      t.integer :quest_id, :null => false
      t.integer :category_id, :null => false

      t.timestamps null: false
    end
  end
end
