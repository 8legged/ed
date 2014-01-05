class Lesson < ActiveRecord::Base
  dragonfly_accessor :picture
  belongs_to :user
end