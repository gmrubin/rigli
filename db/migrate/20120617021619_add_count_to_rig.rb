class AddCountToRig < ActiveRecord::Migration
  def change
    add_column :rigs, :count, :integer
  end
end
