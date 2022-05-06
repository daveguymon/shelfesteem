# frozen_string_literal: true

class Book < ApplicationRecord
  acts_as_tenant :user
  has_many :shelvings
  has_many :shelves, through: :shelvings

  validates :title, :subtitle, :authors, :description, :page_count, :categories, :image_links, presence: true
end
