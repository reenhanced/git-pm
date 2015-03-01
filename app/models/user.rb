class User < ActiveRecord::Base
  has_many :user_projects
  has_many :projects, through: :user_projects

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.email = auth["info"]["email"]
      user.name = auth["info"]["name"]
      user.username = auth["info"]["nickname"]
      user.oauth_token = auth['credentials'].token
    end
  end
end
