class CategoryController < ApplicationController
  def indoor
    @quests = Quest.where(category: 0)
    return @quests
  end

  def outdoor
    @quests = Quest.where(category: 1)
    return @quests
  end

  def party
    @quests = Quest.where(category: 2)
    return @quests
  end



end
