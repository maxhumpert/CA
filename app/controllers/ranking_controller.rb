class RankingController < ApplicationController
  def index   # add the filenames method
    @quests = Quest.all
    return @quests
  end
end
