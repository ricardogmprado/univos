class MessagesController < ApplicationController
  before_action :set_activity, only: [:index, :create, :confirmed_for_activity]

  def index
    if confirmed_for_activity
      @messages = policy_scope(Message).where(activity: @activity)
    end
    @message = Message.new
  end

  def new
    @message = Message.new(message_params)
    authorize @message
    redirect_to activity_messages_path(@message.activity)
  end

  def create
    @message = Message.new(message_params)
    @message.activity = @activity
    @message.user = current_user
    authorize @message
    @message.save
    redirect_to activity_messages_path(@message.activity)
  end


  private

  def confirmed_for_activity
    # if appointment with status confirmed exists with current user and current activity
    Appointment.where(status: "confirmed").where(activity: @activity).find_by(user: current_user).present?
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end

end
