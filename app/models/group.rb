class Group < ActiveRecord::Base
  has_many :customer
  has_many :agent
end
