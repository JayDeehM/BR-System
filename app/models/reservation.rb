class Reservation < ActiveRecord::Base
  belongs_to :air
  belongs_to :user
end
