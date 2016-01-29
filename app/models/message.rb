class Message < ActiveRecord::Base
  belongs_to :ticket_threads
  has_one :customer
  has_one :agent
end
