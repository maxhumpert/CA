class Quest < ActiveRecord::Base
  has_many :quest_categories
  has_many :categories, through: :quest_categories
  validates :title, :description, :points, presence: true
  validates :title, uniqueness: true
  validates :points, numericality: {:greater_than => 0}
end
