class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :set_categories, only: [:new, :create, :index]
  skip_after_action :verify_authorized, only: :index

  def index
     # need all activities that do not have an appointment with current user
    @seen_activities = current_user.appointments.pluck(:activity_id)
    @activities = policy_scope(Activity).where.not(id: @seen_activities).where.not(user_id: current_user.id)
    # SQL query: Activity.joins(:appointments).where.not(appointments: { user_id: current_user.id })
    if params[:category].present?
      @activity = @activities.where(category: params[:category]).sample
      if @activity.nil?
      redirect_to activities_path
      flash[:alert] = "Sorry, no activities match the selected category"
    end
    else
    @activity = @activities.sample
  end
    @selected_categories = params[:category] || []
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
    redirect_to dashboard_path, notice: 'Activity has been deleted.'
  end

  private

  def set_categories
    @categories = ['sports', 'food & drinks', 'nature', 'art & culture', 'Music & Dance', 'Hobbies', 'LGBTQ', 'Nightlife', 'Outdoors', 'Health & Wellness']
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :description, :date, :meeting_point, :category, :number_of_people)
  end
end
