class AddTypeToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :appointment_type_id, :integer
    add_column :appointments, :properties, :text
  end
end
