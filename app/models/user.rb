class User < ApplicationRecord
  has_secure_password
  
  belongs_to :organization, optional: true
  # has_many :shifts

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email,
  format: { with: /^\w+([.-]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/, message: "Invalid email format" },
            uniqueness: { case_sensitive: false }
## regex key: ^ start of string, $ end of string, \w alphanumeric, + one or more, * 0 or more, [] any of chars inside, ()capture groups

end
