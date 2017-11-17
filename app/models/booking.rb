class Booking < ApplicationRecord
  belongs_to :lesson
  belongs_to :user


# needs: status exists - inclusion (pending/confirmed/rejected)
      #  booking_time - exists, only integer true
  validate :date_is_in_the_future
  validates :lesson, presence: true
  validates :user, presence: true
  validates :status, presence: true, inclusion: {in: %w(pending accepted declined)}
  validates :booking_time, presence: true

  def date_is_in_the_future
    if booking_time.present? && booking_time < Time.now
      errors.add(:booking_time, "Can't be in the past")
    end
  end
end
