class Student < ActiveRecord::Base
  #attr_accessible :fname, :gender, :lname
  attr_accessible :first_name, :gender, :last_name
  
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :gender, :presence => true
  
end
