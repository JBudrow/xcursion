class County < ActiveRecord::Base
  belongs_to :province
  has_many :trails
  has_many :trails, through: :users 
end
