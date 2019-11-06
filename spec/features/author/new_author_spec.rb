require 'rails_helper'

describe "New author page", type: :feature do
  it "should render without error" do
    visit new_author_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit new_author_path

    # these are the standard names given to inputs by the form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should show a error message if the author is invalid" do
    visit new_author_path
    fill_in "author[first_name]",  with: "Test"
    fill_in "author[last_name]", with: nil
    fill_in "author[homepage]", with: "Test.Homepage"
    click_on "Save Author"
    expect(page).to have_content("Last name can't be blank")
  end
end