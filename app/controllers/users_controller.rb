class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def dashboard
    @user = current_user
    authorize @user
    @saved_appointments = @user.appointments.where(status:'saved')
    @declined_appointments = @user.appointments.where(status:'declined')
    @confirmed_appointments = @user.appointments.where(status:'confirmed').pluck(:activity_id)
    @confirmed_activities = Activity.where(id: @confirmed_appointments).where.not(user_id: @user.id)
    @created_activities = @user.activities
  end
end
