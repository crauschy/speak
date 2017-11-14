class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :img_src, default: "default"
      t.integer :user_id, default: nil

      t.timestamps
    end
  end
end
