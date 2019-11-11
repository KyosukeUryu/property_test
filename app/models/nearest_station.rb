class NearestStation < ApplicationRecord
  validates :route, presence: true, length: { maximum: 50 }
  validates :name, presence: true, length: { maximum: 30 }
  validates :on_foot, presence: true, numericality: { only_integer: true }
  belongs_to :property, inverse_of: :nearest_stations
end
