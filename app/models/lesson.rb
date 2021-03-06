class Lesson < ApplicationRecord

  belongs_to :user

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  validates :description, presence: true, length: {minimum: 15}
  validates :location, presence: true
  validates :category, presence: true, inclusion: {in: %w(coding arts school)}
  validates :price, presence: true, numericality: { only_integer: true }
  validates :title, presence: true
  validates :user, presence: true
end
