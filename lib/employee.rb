class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { in: 40..200 }
end
