class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :word, null: false
      t.string :img_src, default: "white.png"
      t.integer :user_id, default: nil

      t.timestamps
    end
  end
end
