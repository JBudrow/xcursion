class Trail < ActiveRecord::Base
  belongs_to :province
  has_many :users
end
