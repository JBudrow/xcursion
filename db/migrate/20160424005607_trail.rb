class Trail < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.integer :province_id
      t.integer :user_id 
      t.integer :lat
      t.integer :lon
      t.integer :distance
      t.string :name
      t.string :image
      t.text :description
      t.text :direction

      t.timestamps
    end
  end
end
