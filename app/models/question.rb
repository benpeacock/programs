class Question < ActiveRecord::Base
  belongs_to :tab
  belongs_to :type
  has_many :answers
end
