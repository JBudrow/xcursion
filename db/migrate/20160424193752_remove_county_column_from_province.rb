class RemoveCountyColumnFromProvince < ActiveRecord::Migration
  def change
    remove_column :provinces, :county, :string
    remove_column :provinces, :state, :string
    remove_column :provinces, :image, :string
  end
end
