class RankingController < ApplicationController
  def index   # add the filenames method
    @users = User.order('points DESC')
    return @users
  end
end
