class AddDateToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :date, :datetime
    remove_column :appointments, :appointment_time
  end
end
