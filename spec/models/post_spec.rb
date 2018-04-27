require 'rails_helper'

describe Post do
  it { should validate_presence_of :post_title }
  it { should validate_presence_of :post_body }
  it { should have_many :comments }
end
