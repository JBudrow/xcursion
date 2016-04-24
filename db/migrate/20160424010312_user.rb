class User < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :alias
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :avatar

      t.timestamps
    end
  end
end
