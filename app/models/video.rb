class Video < ActiveRecord::Base
	def self.import(file)
	  CSV.foreach(file.path, headers: true) do |row|
	    Video.create! row.to_hash
	  end
	end
end
