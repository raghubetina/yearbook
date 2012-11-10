class Student < ActiveRecord::Base
  attr_accessible :avatar_url, :github, :name, :section_id, :twitter
  
  belongs_to :section
end
