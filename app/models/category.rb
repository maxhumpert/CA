class Category < ActiveRecord::Base
  has_many :quest_categories
  has_many :quests, through: :quest_categories
  validates :name, presence: true, uniqueness: true
end
