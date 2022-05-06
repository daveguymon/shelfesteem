# frozen_string_literal: true

class Shelving < ApplicationRecord
  acts_as_tenant :user
  belongs_to :book
  belongs_to :shelf
end
