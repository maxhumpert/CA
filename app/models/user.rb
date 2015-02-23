class User < ActiveRecord::Base
  belongs_to :role
  has_many :quests

  after_create :default_role

  private
  def default_role
    self.roles << Role.where(:name => 'registered').first
  end

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true, :length => { :minimum => 3, :maximum => 25 }


end
