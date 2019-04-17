class SavedPattern < ApplicationRecord
  belongs_to :user
  belongs_to :pattern
  validates_uniqueness_of :user_id, scope: :pattern_id
end
