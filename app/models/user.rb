class User < ActiveRecord::Base
  attr_accessible :email, :zip
  has_many :orders
end
