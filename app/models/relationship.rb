class Relationship < ApplicationRecord
  # relations
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  # validations
  validates :follower_id, presence: true
  validates :followed_id, presence: true
  validates_uniqueness_of :followed_id, :scope => [:follower_id]
  validates_uniqueness_of :follower_id, :scope => [:followed_id]
end
