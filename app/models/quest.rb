class Quest < ActiveRecord::Base
  has_many :quest_categories
  has_many :categories, through: :quest_categories
  validates :title, :description, :points, presence: true, uniqueness: true
  validates :points, numericality: {:greater_than_or_equal => 10, :less_than_or_equal => 300, :only_integer => true}
end