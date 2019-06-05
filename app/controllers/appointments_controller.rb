class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.new(appointment_params)
    authorize appointment
    appointment.user = current_user
    appointment.save

    if params[:show] != nil
    redirect_to activity_path(appointment.activity)
    else
    redirect_to activities_path(category: params[:category], checked:true)
   end

  end

  def update
    appointment = Appointment.find(params[:id])
    authorize appointment
    appointment.user = current_user
    appointment.update(appointment_params)
    redirect_to dashboard_path
  end

  private

  def appointment_params
    { activity_id: params[:activity_id], status: params[:status] }
  end
end
