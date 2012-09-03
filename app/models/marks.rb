class Marks < ActiveRecord::Base
  belongs_to :student
  attr_accessible :average_marks, :drupal, :exam, :joomla, :php, :ruby, :total, :wordpress
end
