class Organization < ApplicationRecord

    # has_many :users

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :hourly_rate, numericality: {greater_than_or_equal_to: 12,
        message: " should be at least Illinois' minimum wage of $12.00" }
end
