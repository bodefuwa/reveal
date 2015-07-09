class CreatePrayerPoints < ActiveRecord::Migration
  def change
    create_table :prayer_points do |t|
      t.string :point
      t.references :prayer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
