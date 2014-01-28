class App < ActiveRecord::Base

	
	has_attached_file :logo, :default_url => "/images/:style/missing.png"

	validates_presence_of :name, :summary, :description
	validates_attachment :logo, :presence => true, :content_type => { :content_type => ["image/jpg", "image/gif", "image/png"] }, :size => { :in => 0..10.kilobytes }

end
