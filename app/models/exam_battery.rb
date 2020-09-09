class ExamBattery < ApplicationRecord
  has_and_belongs_to_many :exams
  accepts_nested_attributes_for :exams, reject_if: lambda { |attrs| attrs['name'].blank? }
  validates_presence_of :name
end
