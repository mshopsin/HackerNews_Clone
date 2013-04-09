# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string(255)
#  password   :string(255)
#  points     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base

  attr_accessible :password, :points, :username

  has_many :emails
  accepts_nested_attributes_for :emails, :allow_destroy => :true

end
