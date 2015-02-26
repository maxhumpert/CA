class Quest < ActiveRecord::Base #erbt alle Methoden der Base Klasse
  has_many :quest_categories
  has_many :categories, :through => :quest_categories
  has_many :users

  validates :title, presence: true, uniqueness: true
  validates :description, :points, presence: true
  validates :points, numericality: {:greater_than_or_equal_to => 10, :less_than_or_equal_to => 300, :only_integer => true}
end