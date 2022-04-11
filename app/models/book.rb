class Book < ApplicationRecord
  has_many :shelvings
  has_many :shelves, :through => :shelvings
end
