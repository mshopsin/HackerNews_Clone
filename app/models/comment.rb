# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  author_id  :integer
#  body       :text
#  reply_id   :integer
#  post_id    :integer
#  points     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :author_id, :body, :points, :post_id, :reply_id

  belongs_to :post
  belongs_to :author, :class_name => "User"

  def username
    author.username
  end
end
