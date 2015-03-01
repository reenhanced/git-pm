class Project < ActiveRecord::Base
  has_many :user_projects
  has_many :users, through: :user_projects
  
  validates :repo, presence: true

  def repo_owner
    if "#{self.repo}".include? '/'
      self.repo.split('/').first
    else
      self.owner.try(:username)
    end
  end
end
