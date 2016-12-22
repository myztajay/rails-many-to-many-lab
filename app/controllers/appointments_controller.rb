class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show

  end
end
