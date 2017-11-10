class CreateCategoriesKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :categories_keywords do |t|
      t.belongs_to :category, index: true
      t.belongs_to :keyword, index: true
    end
  end
end
