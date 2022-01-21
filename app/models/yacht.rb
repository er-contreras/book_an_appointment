class Yacht < ApplicationRecord
  has_one_attached :picture

  validates :name, presence: true, uniqueness: true

  # validates :price_per_hour, presence: true
  # validates :description, presence: true
  # validates :insurance, presence: true
  # validates :extra_person_fee, presence: true
end
