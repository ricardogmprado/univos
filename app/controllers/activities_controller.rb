class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :set_categories, only: [:new, :create, :index]
  skip_after_action :verify_authorized, only: :index

  def index
    if request.location.longitude
      @activities = policy_scope(Activity).near([request.location.latitude, request.location.longitude], 200)
      # need all activities that do not have an appointment with current user
    else
      @activities = policy_scope(Activity)
    end
    @seen_activities = current_user.appointments.pluck(:activity_id)
    @activities = @activities.where.not(id: @seen_activities).where.not(user_id: current_user.id)
    # SQL query: Activity.joins(:appointments).where.not(appointments: { user_id: current_user.id })

    # raise
      # end_filter_date = params[:activity][:date].to_datetime.end_of_day
      # start_filter_date = params[:activity][:date].to_datetime.beginning_of_day
      #.where('date >= ? AND date <= ?', start_filter_date, end_filter_date).sample

    if params[:category].present?
      @activities = @activities.where(category: params[:category])
    end
    if params[:date].present?
      date = params[:date].to_date
      @activities = @activities.where('date >= ? AND date <= ?', date.beginning_of_day, date.end_of_day)
    end

    @activity = @activities.sample
    if @activity.nil?
      flash[:alert] = "Sorry, no activities match the selected category"
    end
    @selected_categories = params[:category] || []
    @selected_dates = params[:date] || []
  end

  def show
    authorize @activity
    @activity = Activity.find(params[:id])

    @markers = [{ lat: @activity.latitude, lng: @activity.longitude }]
  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create
    @activity = Activity.new(activity_params)
    authorize @activity
    @activity.user = current_user
    raise
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
    params.require(:activity).permit(:title, :description, :date, :meeting_point, :latitude, :longitude, :category, :number_of_people, :body, :photo)
  end
end
