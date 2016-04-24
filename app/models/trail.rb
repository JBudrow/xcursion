class Trail < ActiveRecord::Base
  belongs_to :county
  belongs_to :user
end
