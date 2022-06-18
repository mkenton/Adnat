class User < ApplicationRecord
  has_secure_password
  
  belongs_to :organization, optional: true
  # has_many :shifts

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email,
  format: { with: /^(.+)@(.+)$/, message: "Invalid email format" },
            uniqueness: { case_sensitive: false }

end
