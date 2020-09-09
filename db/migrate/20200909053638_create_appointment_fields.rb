class CreateAppointmentFields < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_fields do |t|
      t.string :field_type
      t.boolean :required
      t.belongs_to :appointment_type, foreign_key: true

      t.timestamps
    end
  end
end
