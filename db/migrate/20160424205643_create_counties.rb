class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.integer :province_id
      t.string :name
      t.integer :trail_count

      t.timestamps null: false
    end
  end
end
