class Review < ApplicationRecord
  belongs_to :user
  
  has_many :books, through: :bookreview
end
