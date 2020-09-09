class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :hour
      t.text :comments

      t.timestamps
    end
  end
end
