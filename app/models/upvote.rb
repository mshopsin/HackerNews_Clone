class Upvote < ActiveRecord::Base
  attr_accessible :comment_id, :user_id
end
