class Province < ActiveRecord::Base
  has_many :trails
  has_many :trails, through: :users 
end
