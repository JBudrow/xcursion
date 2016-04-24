class Province < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :region
      t.string :county
      t.string :state
      t.string :image 

      t.timestamps
    end
  end
end
