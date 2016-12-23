class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appt_params)
    if @appointment.save
      redirect_to appointments_path
    else
      render new_appointment_path
    end
  end

  private
  def appt_params
    params.require(:appt).permit(:doctor_id, :patient_id, :date)
  end
end
