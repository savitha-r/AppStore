class AddLogoToApp < ActiveRecord::Migration
  def change
  	add_attachment :apps, :logo
  	remove_column :apps, :photo_file_name
  	remove_column :apps, :photo_content_type
  	remove_column :apps, :photo_file_size
  end
end
