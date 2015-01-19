class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.decimal :points

      t.timestamps null: false
    end
  end
end
