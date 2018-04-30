class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  validates :post_title, :post_body, :presence => true

end
