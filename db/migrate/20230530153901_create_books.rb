class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.date :publishedOn
      t.boolean :current
      t.date :meeting_date
      t.string :meeting_location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
