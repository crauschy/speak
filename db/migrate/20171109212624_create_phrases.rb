class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.text :sentence, array: true, null: false, default: []
      t.integer :count, default: 0
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
