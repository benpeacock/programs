class Question < ActiveRecord::Base
  belongs_to :tab
  belongs_to :type
  has_many :answers

  	rails_admin do
		list do
			field :question
			field :type
			field :tab
			field :position
		end
	end
end
