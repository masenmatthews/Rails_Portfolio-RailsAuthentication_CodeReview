class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/pictures/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :post_title, :post_body, :presence => true

end
