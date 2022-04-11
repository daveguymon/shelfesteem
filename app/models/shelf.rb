class Shelf < ApplicationRecord
  has_many :shelvings
  has_many :books, :through => :shelvings
end
