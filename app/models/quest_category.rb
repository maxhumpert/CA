class QuestCategory < ActiveRecord::Base
  attr_access

  belongs_to :quest
  belongs_to :category
end
