class Year < ActiveRecord::Base
	has_many :answers
	belongs_to :program
end
