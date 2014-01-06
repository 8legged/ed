class User < ActiveRecord::Base
  has_secure_password

  has_many :lessons, dependent: :destroy
end
