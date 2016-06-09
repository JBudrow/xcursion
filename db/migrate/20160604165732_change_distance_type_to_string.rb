class ChangeDistanceTypeToString < ActiveRecord::Migration
  def change
    change_column :trails, :distance, :string
  end
end
