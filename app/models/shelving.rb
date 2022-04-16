class Shelving < ApplicationRecord
  acts_as_tenant :user
  belongs_to :book
  belongs_to :shelf

  validates_presence_of :book
  validates_presence_of :shelf
end
