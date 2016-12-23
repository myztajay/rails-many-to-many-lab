class AppointmentsController < ApplicationController
   before_filter :find_appointment, only: [:show, :edit, :update, :destroy]
  def index
    @appointments = Appointment.all
  end

  def show

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

  def edit
  end

  def update
    @appointment.update(appt_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  private
  def appt_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :date)
  end

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end
end
