class Appointment < ApplicationRecord
  # TODO: 7:38 http://railscasts.com/episodes/403-dynamic-forms
  belongs_to :appointment_type
  serialize :properties, Hash
end
