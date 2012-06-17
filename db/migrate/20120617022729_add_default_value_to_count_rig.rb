class AddDefaultValueToCountRig < ActiveRecord::Migration
  def up
    change_column :rigs, :count, :integer, :default => 0
  end

  def down
    change_column :rigs, :count, :integer, :default => nil
  end
end
