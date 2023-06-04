class Book < ApplicationRecord
  belongs_to :user

  has_many :reviews, through: :bookreview
end
