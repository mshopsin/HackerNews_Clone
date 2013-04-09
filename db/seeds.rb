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


Comment.create(:body=>"Tell it like it is, Fry!", :post_id=>1, :author_id=>2)

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

#User.create(:username=>"PhilipFry", :password=>"1234")
#User.create(:username=>"BenderRodriquez", :password=>"1234")

Post.create(:title=>"evil search engine", :link=>"www.google.com", :author_id=>1)




