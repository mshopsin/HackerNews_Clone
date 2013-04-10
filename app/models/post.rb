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
  attr_accessible :author_id, :link, :points, :title, :comments_attributes

  has_many :comments
  accepts_nested_attributes_for :comments

  belongs_to :author, :class_name => "User"

  def username
    author.username
  end

end
