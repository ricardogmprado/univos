class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_authorized, only: :index
  def index
    @activities = policy_scope(Activity)
    @activities = @activities.where.not(user_id: current_user.id)
    @activity = @activities.sample
  end

  def show
    authorize @activity
  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create
    @activity = Activity.new(activity_params)
    authorize @activity
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path(@activity), notice: 'Your activity is now visible for awesome people.'
    else
      render :new
    end
  end

  def edit
    authorize @activity
  end

  def update
    authorize @activity
    if @activity.update(activity_params)
      redirect_to activity_path(@activity), notice: 'Your activity has been updated.'
    else
      render :edit
    end
  end

  def destroy
    authorize @activity
    @activity.destroy
    redirect_to activities_path, notice: 'Activity has been deleted.'
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :description, :date, :meeting_point, :category, :number_of_people)
  end
end
