class UserController < ApplicationController
  def add_points_user
    @user = current_user
    @quest = Quest.find(params[:id])
    @user.update_attributes(school_id: params[:school_id])

    respond_to do |format|
      flash[:notice] = "School has been added!"
      redirect_to @user.school
    end
  end
end
