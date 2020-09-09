class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :phone
      t.boolean :agreement

      t.timestamps
    end
  end
end
