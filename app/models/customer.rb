class Customer < ActiveRecord::Base
  belongs_to :organization
  has_many :ticket
  has_many :message
end
