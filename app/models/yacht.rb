class Yacht < ApplicationRecord
  has_one_attached :picture

  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :price_per_hour, presence: true, numericality: { in: 1_000_000 }
  validates :description, presence: true, length: { maximum: 500 }
  validates :insurance, presence: true, numericality: { in: 0..1_000_000 }
  validates :extra_person_fee, presence: true, numericality: { in: 0..1_000_000 }
  validates :max_time, presence: true, numericality: { in: 1..100 }
end
