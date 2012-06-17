class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :short_url
      t.string :target
      t.integer :count
      t.string :note

      t.timestamps
    end
  end
end
