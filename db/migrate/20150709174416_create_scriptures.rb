class CreateScriptures < ActiveRecord::Migration
  def change
    create_table :scriptures do |t|
      t.string :book
      t.string :chapter
      t.string :verser
      t.text :text

      t.timestamps null: false
    end
  end
end
