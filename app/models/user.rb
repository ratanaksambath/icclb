class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :membership_type,
    on: :create,
    presence: true,
	#inclusion: { in: proc { InviteCode.where( used: false ).map( &:code ) } }
	inclusion: { in: ["iccfall-1","iccfall-2"] }

	after_create :change_password

	def change_password
		  self.password = self.membership_type
  		  self.password_confirmation = self.membership_type
  		  self.save
	end

end
