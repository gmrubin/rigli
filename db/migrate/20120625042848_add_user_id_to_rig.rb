class AddUserIdToRig < ActiveRecord::Migration
  def change
    add_column :rigs, :user_id, :integer
  end
end
