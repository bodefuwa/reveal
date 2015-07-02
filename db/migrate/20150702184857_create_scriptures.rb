class CreateScriptures < ActiveRecord::Migration
  def change
    create_table :scriptures do |t|
      t.string :book
      t.integer :chapter
      t.string :verse

      t.timestamps null: false
    end
  end
end
