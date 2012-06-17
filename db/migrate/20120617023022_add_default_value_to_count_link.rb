class AddDefaultValueToCountLink < ActiveRecord::Migration
  def up
    change_column :links, :count, :integer, :default => 0
  end

  def down
    change_column :links, :count, :integer, :default => nil
  end
end
