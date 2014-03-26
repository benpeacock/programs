class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def role?(base_role)
    role == base_role.to_s
  end

	rails_admin do
		list do
			field :name
			field :email
			field :role
			field :last_sign_in_at
			field :created_at
			field :confirmed_at
		end
	end

	def say_durp
		alert('durp');
	end

end
