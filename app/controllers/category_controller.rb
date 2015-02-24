class CategoryController < ApplicationController
  def indoor
    @quests = Quest.all
    return @quests
  end

  def outdoor
    @quests = Quest.all
    return @quests
  end

  def party
    @quests = Quest.all
    return @quests
  end



end
