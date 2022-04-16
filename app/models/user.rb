class User < ApplicationRecord
  after_create :set_default_shelves
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :shelvings
  has_many :shelves
  has_many :books

private

  def set_default_shelves
    default_shelves = ["Favorites", "Reading", "To Be Read", "Have Read"]
    default_shelves.each do |shelf|
      Shelf.create(:name => shelf, :user_id => self.id)
    end
  end
end
