class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :book, foreign_key: true, index: true, null: false
      t.text :description

      t.timestamps
    end
  end
end
