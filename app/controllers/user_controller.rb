class UserController < ApplicationController
  def add_points_user
  User.update(current_user.id, :points => current_user.points + Quest.find(params[:quest_id]).points)

  flash[:notice] = "Points have been added!"

  redirect_to ranking_index_path


  end
end
