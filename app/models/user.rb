class User < ActiveRecord::Base
  validates_presence_of :password, :email
  validates :password, length: { minimum: 4 }
  validates :email, format: { with: /.+@.+/, message: 'Invalid email address' }

  has_many :trails
  has_many :trails, through: :counties 
end
