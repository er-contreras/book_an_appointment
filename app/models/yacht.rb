class Yacht < ApplicationRecord
  has_one_attached :picture

  validates :name, presence: true, uniqueness: true

  validates :price_per_hour, presence: true, numericality: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :insurance, presence: true, numericality: true
  validates :extra_person_fee, presence: true, numericality: true
end
