class DropBookReviewTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :BookReview
  end
end
