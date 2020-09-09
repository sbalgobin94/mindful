class AddColToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_reference :appointments, :apptime, index: true
  end
end
