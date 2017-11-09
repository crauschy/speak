class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :word
      t.string :img_src

      t.timestamps
    end
  end
end
