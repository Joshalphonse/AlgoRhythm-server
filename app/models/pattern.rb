class Pattern < ApplicationRecord
  has_many :saved_patterns
  has_many :users, through: :saved_patterns
end
