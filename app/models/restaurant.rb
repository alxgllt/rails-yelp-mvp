class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  RESTAURANT = ["chinese","italian", "japanese","french","belgian"]
  validates :category, presence:true, inclusion: { in: RESTAURANT, allow_nil: false }
  validates :name, presence: true
  validates :address, presence: true

end
