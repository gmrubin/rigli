class CreateShort < ActiveRecord::Migration
  def change
    create_table :shorts do |t|
      t.integer :shortable_id
      t.string :shortable_type
      t.string :surl

      t.timestamps
    end
  end
end
