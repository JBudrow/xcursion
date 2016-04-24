class AddCountiesColumnToProvince < ActiveRecord::Migration
  def change
    add_column :provinces, :counties, :string, array: true, default: []
  end
end
