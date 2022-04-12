class Shelving < ApplicationRecord
  belongs_to :book
  belongs_to :shelf

  validates_presence_of :book
  validates_presence_of :shelf
end
