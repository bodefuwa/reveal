class CreateResultSets < ActiveRecord::Migration
  def change
    create_table :result_sets do |t|
      t.integer :topic_id
      t.integer :scripture
      t.integer :prayer_id
      t.integer :media_id

      t.timestamps null: false
    end
  end
end
