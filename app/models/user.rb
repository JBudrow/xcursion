class User < ActiveRecord::Base
  has_many :trails
  has_many :trails, through: :provinces
end
