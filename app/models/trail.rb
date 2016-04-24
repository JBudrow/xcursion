class Trail < ActiveRecord::Base
  belongs_to :province
  belongs_to :user
end
