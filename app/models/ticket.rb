class Ticket < ActiveRecord::Base
  belongs_to :queue
  has_many :ticket_threads
end
