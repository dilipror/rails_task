class Customer < ActiveRecord::Base

  has_many :charges, dependent: :destroy

  # It will return maximum charged object
  def max_charged
    charges.max_charged
  end

end
