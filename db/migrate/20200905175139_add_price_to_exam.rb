class AddPriceToExam < ActiveRecord::Migration[5.2]
  def change
    add_column :exams, :price, :integer
  end
end
