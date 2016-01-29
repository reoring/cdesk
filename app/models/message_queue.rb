class MessageQueue < ActiveRecord::Base
  has_one :group
  has_many :messages
end
