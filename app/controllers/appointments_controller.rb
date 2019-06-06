class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.new(appointment_params)
    authorize appointment
    appointment.user = current_user
    appointment.save
    if params[:show] != nil
     redirect_to activity_path(appointment.activity)
    else
     redirect_to activities_path(category: params[:category], date: params[:date], checked:true)
   end

  end

  def update
    appointment = Appointment.find(params[:id])
    authorize appointment
    appointment.user = current_user
    appointment.update(appointment_params)
    redirect_to dashboard_path
  end

  def destroy
      a = Appointment.find(params[:id])
      authorize a
      a.destroy
      flash[:notice] = "Guest deleted."
      redirect_to activity_appointments_path(Activity.find(params[:activity_id]))
  end

  def index
    @activity = Activity.find(params[:activity_id])
    @appointments = @activity.appointments
  end

  private

  def appointment_params
    { activity_id: params[:activity_id], status: params[:status] }
  end
end
