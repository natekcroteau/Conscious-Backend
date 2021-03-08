class User < ApplicationRecord
  has_secure_password
  has_many :gratitudes
  has_many :freewrites
end
