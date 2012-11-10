class Section < ActiveRecord::Base
  attr_accessible :location, :name, :quarter, :times
  
  has_many :students
end
