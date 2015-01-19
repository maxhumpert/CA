class CreateQuestCategories < ActiveRecord::Migration
  def change
    create_table :quest_categories do |t|
      t.references :quest, index: true
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :quest_categories, :quests
    add_foreign_key :quest_categories, :categories
  end
end
