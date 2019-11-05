require 'rails_helper'

describe "Index author page", type: :feature do

  it "should render with link" do
    visit authors_path
    expect(page).to have_link 'New Author', href: new_author_path
  end
end
