class Code < ActiveRecord::Base
  has_many :videos, dependent: :destroy
end
