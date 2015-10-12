class Code < ActiveRecord::Base
  has_many :sections, dependent: :destroy
end
