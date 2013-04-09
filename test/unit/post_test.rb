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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
