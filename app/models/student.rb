class Student < ActiveRecord::Base
  #attr_accessible :fname, :gender, :lname
  attr_accessible :first_name, :gender, :last_name
  
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :gender, :presence => true
  
  
  def self.active(id)
	std = Student.find(id)
	std.update_attribute(:status,true)
  end
  
  def self.deactivate(id)
  	std = Student.find(id)
	std.update_attribute(:status,false)
  end
  
end
