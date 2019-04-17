class User < ApplicationRecord
  has_many :saved_patterns
  has_many :patterns, through: :saved_patterns
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
