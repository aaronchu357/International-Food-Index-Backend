class User < ApplicationRecord
  has_many :comments
  has_many :national_dishes, through: :comments

  has_secure_password
  validates :username, uniqueness: { case_sensitive: false}
  
  accepts_nested_attributes_for :national_dishes, allow_destroy: true
end
