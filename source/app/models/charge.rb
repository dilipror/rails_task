class Charge < ActiveRecord::Base

  belongs_to :customer
  monetize :amount

  # charge object that have the largest amount attribute out of any associated charges
  scope :max_charged, -> { order("amount DESC").first }

  scope :successful, -> { where(paid: true, refunded: false) }
  scope :unsuccessful, -> { where(paid: false, refunded: false) }
  scope :disputed, -> { where(paid: true, refunded: true) }

  validates :customer , presence: true
  validates :amount , presence: true
  validates :amount_currency , presence: true

end
