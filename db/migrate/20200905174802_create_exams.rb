class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :name
      t.text :description
      t.string :order

      t.timestamps
    end
  end
end
