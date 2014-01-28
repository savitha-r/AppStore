class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :summary
      t.text :description
      t.string :photo_file_name
      t.string :photo_content_type
      t.string :photo_file_size
      t.string :direct_upload_url
      t.boolean :processed, :default => false, :null => false

      t.timestamps
    end
    add_index :apps, :processed
  end
end
