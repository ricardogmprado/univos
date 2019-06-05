class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_authorized, only: :index
  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path(@activity), notice: 'Your activity is now visible for awesome people.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to activity_path(@activity), notice: 'Your activity has been updated.'
    else
      render :edit
    end
  end

  def destroy
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
