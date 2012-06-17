class AddRigIdToLink < ActiveRecord::Migration
  def change
    add_column :links, :rig_id, :integer
  end
end
