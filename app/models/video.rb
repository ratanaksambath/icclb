class Video < ActiveRecord::Base
	belongs_to :section
  
  def self.import(file)
	  CSV.foreach(file.path, headers: true) do |row|
	    Video.create! row.to_hash
	  end
	end

  def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |product|
      csv << product.attributes.values_at(*column_names)
    end
  end
end

end
