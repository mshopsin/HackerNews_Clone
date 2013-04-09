class Email < ActiveRecord::Base

  attr_accessible :password, :points, :username

  belongs_to :user

end