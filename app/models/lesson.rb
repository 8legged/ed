class Lesson < ActiveRecord::Base
  dragonfly_accessor :picture
  belongs_to :user
  validates :user_id, presence: true
end