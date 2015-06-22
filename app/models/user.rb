class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :membership_type,
    on: :create,
    presence: true,
	#inclusion: { in: proc { InviteCode.where( used: false ).map( &:code ) } }
	inclusion: { in: ["springhearings1","springhearings2"] }

end
