class RemoveColumns < ActiveRecord::Migration
  def up
    remove_column :links, :count
    remove_column :links, :short_url
    remove_column :rigs, :count
  end

  def down
    add_column :links, :count, :integer, default: 0
    add_column :links, :short_url, :string
    add_column :rigs, :count, :integer, default: 0
  end
end
