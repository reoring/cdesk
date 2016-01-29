class TicketThread < ActiveRecord::Base
  belongs_to :ticket
  has_many :messages
end
