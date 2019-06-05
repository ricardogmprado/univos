class AppointmentsController < ApplicationController
  def create
    appointment = Appointment.new(appointment_params)
    appointment.user = current_user
    appointment.save
    redirect_to activities_path
  end

  def update
    appointment = Appointment.find(params[:activity_id])
    appointment.user = current_user
    appointment.update(appointment_params)
    redirect_to activity_path(@activity), notice: 'You successfully joined this Activity.'
  end

  def destroy
  end

  private

  def appointment_params
    { activity_id: params[:activity_id], status: params[:status] }
  end
end
