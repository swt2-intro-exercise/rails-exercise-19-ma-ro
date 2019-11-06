require 'rails_helper'

describe "New author page", type: :feature do

  it "should change a author when edit is clicked" do
    visit new_author_path
    fill_in "author[first_name]",  with: "Test_First"
    fill_in "author[last_name]", with: "Test_Last"
    fill_in "author[homepage]", with: "Test.Homepage"
    click_on "Save Author"
    click_on "Edit"
    fill_in "author[last_name]", with: "Test_Last_change"
    click_on "Update Author"
    expect(page).to have_content("Test_Last_change")
  end
end
