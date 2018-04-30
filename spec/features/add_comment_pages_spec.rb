require 'rails_helper'

describe "the add a comment process" do
  it "adds a new comment" do
    visit new_post_path
    fill_in 'Post title', :with => 'Test title'
    fill_in 'Post body', :with => 'Test body'
    click_on 'Create Post'

    expect(page).to have_content 'Test title'
    click_on 'Test title'
    click_on 'Add new comment'
    fill_in 'Comment body', :with => 'Test comment'
    click_on 'Create Comment'
    expect(page). to have_content 'Test comment'
  end
end
