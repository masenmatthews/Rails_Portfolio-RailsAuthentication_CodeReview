class Comment < ActiveRecord::Base
  belongs_to :post
  validates :comment_body, :presence => true


end
