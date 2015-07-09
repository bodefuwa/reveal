class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :link
      t.references :media_type, index: true, foreign_key: true
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
