class Agent < ActiveRecord::Base
  belongs_to :group
  has_many :ticket
  has_many :message
end
