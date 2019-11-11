class NearestStation < ApplicationRecord
  validates :route, length: { maximum: 50 }
  validates :name, length: { maximum: 30 }
  belongs_to :property
end
