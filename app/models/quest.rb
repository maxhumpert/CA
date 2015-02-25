class Quest < ActiveRecord::Base #erbt alle Methoden der Base Klasse
  belongs_to :parent_category, class_name: "Category", foreign_key: 'parent_id'
  has_one :user
  validates :title, :points, presence: true, uniqueness: true
  validates :description, :category, presence: true
  validates :points, numericality: {:greater_than_or_equal_to => 10, :less_than_or_equal_to => 300, :only_integer => true}
end