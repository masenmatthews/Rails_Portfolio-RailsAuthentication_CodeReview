require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit new_post_path
    fill_in 'Post title', :with => 'Test title'
    fill_in 'Post body', :with => 'Test body'
    click_on 'Create Post'
    expect(page).to have_content 'Posts'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Post'
    expect(page).to have_content 'errors'
  end
end
