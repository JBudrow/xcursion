class RemoveCountyColumnFromProvince < ActiveRecord::Migration
  def change
    remove_column :provinces, :county, :string
  end
end
