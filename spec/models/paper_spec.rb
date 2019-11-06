require 'rails_helper'

RSpec.describe Paper, type: :model do
  it 'should ' do
    paper =  Paper.new({title: "Alan", venue: "Turing" , year: 1})
    expect(paper.title).to eq("Alan")
    expect(paper.venue).to eq("Turing")
    expect(paper.year).to eq(1)
  end

  it "if no venue then redirect" do
    paper =  Paper.new({title: "Alan", venue: nil, year: 1})
    expect(paper).to_not be_valid
  end

  it "should redirect if year is no number" do
    paper =  Paper.new({title: "Alan", venue: "Turin", year: "hi"})
    expect(paper).to_not be_valid
  end
end
