class AddNameToAppointmentField < ActiveRecord::Migration[5.2]
  def change
    add_column :appointment_fields, :name, :string
  end
end
