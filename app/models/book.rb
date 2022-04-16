class Book < ApplicationRecord
  acts_as_tenant :user
  has_many :shelvings
  has_many :shelves, :through => :shelvings
end
