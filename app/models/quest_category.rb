class QuestCategory < ActiveRecord::Base
  belongs_to :quest
  belongs_to :category
end
