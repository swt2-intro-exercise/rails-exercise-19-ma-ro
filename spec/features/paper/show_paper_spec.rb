require 'rails_helper'

describe "Show Paper Page", type: :feature do

  it "should change show all authors to a paper" do
    @paper = FactoryBot.create :paper
    @author = FactoryBot.create :author
    @paper.authors << @author
    visit paper_path(@paper)
    @paper.authors.each {
      |author| expect(page).to have_text(author.name)
    }
  end
end

