class CreateBooksCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :books_categories, id: false  do |t|
      t.references :category, foreign_key: true, index: true, null: false
      t.references :book, foreign_key: true, index: true, null: false
    end
  end
end
