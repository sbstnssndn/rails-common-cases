class Exam < ApplicationRecord
  has_and_belongs_to_many :exam_batteries
  validates_presence_of :name
end
