class Organization < ApplicationRecord

    # has_many :users

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :hourly_rate, numericality: {greater_than_or_equal_to: 0}
    validates :hourly_rate, format: { with: /\A\d+(?:\.\d{0,2})?\z/,
        message: "Hourly Rate should include two decimal places (e.g., 8.50)" }
end
