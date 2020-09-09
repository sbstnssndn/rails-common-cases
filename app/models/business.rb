class Business < ApplicationRecord
  # Note that the reference :meta doesn't have to match what you put in the
  # User model, but for your sanity it should. Also, dependent: :destroy
  # ensures if the user record is deleted, the associated business record
  # is also deleted.
  has_one :user, as: :meta, dependent: :destroy

  # To create a user record at the same time I create the business record,
  # preferably using the same constructor/create method, you need to enable
  # business actions to accept attributes for their related user record, via:
  accepts_nested_attributes_for :user
end
