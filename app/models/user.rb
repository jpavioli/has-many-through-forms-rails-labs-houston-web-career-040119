class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def user_attributes_username=(category_attributes_username)
    user_attributes_username.values.each do |user_attribute|
      user = User.find_or_create_by(user_attribute)
      self.users << user
    end
  end

end
