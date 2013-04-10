class Email < ActiveRecord::Base

  attr_accessible :password, :points, :username, :address

  belongs_to :user

end