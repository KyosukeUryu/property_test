class Property < ApplicationRecord
  has_many :nearest_stations, dependent: :destroy, inverse_of: :property
  accepts_nested_attributes_for :nearest_stations
  validates :name, presence: true, length: { maximum: 50 }
  validates :rent, presence: true, numericality: { only_integer: true }
  validates :address, presence: true, length: { maximum: 100 }
  validates :age, presence: true, numericality: { only_integer: true }
  validates :remarks, presence: true, length: { maximum: 250 }
end
