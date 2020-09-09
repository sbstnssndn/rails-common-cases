class AppointmentType < ApplicationRecord
  has_many :fields, class_name: 'AppointmentField'
  accepts_nested_attributes_for :fields, allow_destroy: true
end
