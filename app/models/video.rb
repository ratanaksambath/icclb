class Video < ActiveRecord::Base
	belongs_to :code
  
  def self.import(file)
	  CSV.foreach(file.path, headers: true) do |row|
	    Video.create! row.to_hash
	  end
	end

end
