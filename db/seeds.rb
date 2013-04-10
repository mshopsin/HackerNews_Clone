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


User.create(:username=>"Fry",:password=>"1234")
User.create(:username=>"Bender",:password=>"1234")
User.create(:username=>"Lela",:password=>"1234")

Post.create(:title=>"evil search engine", :link=>"www.google.com", :author_id=>1)
Comment.create(:body=>"Tell it like it is, Fry!", :post_id=>1, :author_id=>3)
Comment.create(:author_id=>2, :body=>"Go Mom's Search Engine", :post_id=>1)




