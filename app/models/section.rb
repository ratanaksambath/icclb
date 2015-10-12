class Section < ActiveRecord::Base
  belongs_to :code
  has_many :videos
end
