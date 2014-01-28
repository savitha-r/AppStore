class App < ActiveRecord::Base

	validates_presence_of :name, :summary, :description

	has_attached_file :logo, :default_url => "/images/:style/missing.png"

end
