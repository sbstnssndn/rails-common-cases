class CreateJoinTableExamBatteryExam < ActiveRecord::Migration[5.2]
  def change
    create_join_table :exam_batteries, :exams do |t|
      # t.index [:exam_battery_id, :exam_id]
      # t.index [:exam_id, :exam_battery_id]
    end
  end
end
