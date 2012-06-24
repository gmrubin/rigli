class AddCountToShort < ActiveRecord::Migration
  def change
    add_column :shorts, :count, :integer, default: 0
  end
end
