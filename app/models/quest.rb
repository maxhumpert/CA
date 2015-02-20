class Quest < ActiveRecord::Base
  has_many :quest_categories
  has_many :categories, through: :quest_categories
  validates :title, :points, presence: true, uniqueness: true
  validates :description, presence: true
            validates :points, numericality: {:greater_than_or_equal_to => 10, :less_than_or_equal_to => 300, :only_integer => true}
end