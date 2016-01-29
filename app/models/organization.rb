class Organization < ActiveRecord::Base
  belongs_to :group
  has_many :customers
end
