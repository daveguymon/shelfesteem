# frozen_string_literal: true

class Shelf < ApplicationRecord
  acts_as_tenant :user
  has_many :shelvings
  has_many :books, through: :shelvings

  validates :name, presence: true
end
