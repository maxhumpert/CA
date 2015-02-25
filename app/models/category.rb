class Category < ActiveRecord::Base
  validates :title, :presence => true

  has_many :quest_categories
  has_many :quests, :through => :quest_categories

  has_many :quests
end
