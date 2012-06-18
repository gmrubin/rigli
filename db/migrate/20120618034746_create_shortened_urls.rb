class CreateShortenedUrls < ActiveRecord::Migration
  def change
    create_table :shortened_urls do |t|
      t.integer :shortened_object_id
      t.string :shortened_object_type
      t.string :surl

      t.timestamps
    end
  end
end
