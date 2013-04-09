# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  link       :string(255)
#  author_id  :integer
#  points     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#

class Post < ActiveRecord::Base
  attr_accessible :author_id, :link, :points
end
