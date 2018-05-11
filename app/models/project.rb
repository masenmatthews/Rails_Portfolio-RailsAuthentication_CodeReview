class Project < ActiveRecord::Base
  belongs_to :user

  validates :project_title, :project_description, :link, :presence => true
end
