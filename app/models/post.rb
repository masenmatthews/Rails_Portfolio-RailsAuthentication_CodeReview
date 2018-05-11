class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  has_attached_file :image, styles: { original: "", medium: "300x300>", thumb: "100x100>" } , source_file_options: { all: '-auto-orient' } , default_url: "/pictures/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :post_title, :post_body, :presence => true

end
