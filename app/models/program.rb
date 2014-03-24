class Program < ActiveRecord::Base
	belongs_to :country
	has_many :answers
	has_many :years
end
