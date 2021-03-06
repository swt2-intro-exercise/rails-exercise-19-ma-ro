describe "Author create", :type => :model do
  it 'should ' do
    author =  Author.new({first_name: "Alan", last_name: "Turing" , homepage: "http://wikipedia.org/Alan_Turing"})
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
  end

  it 'should ' do
    author =  Author.new({first_name: "Alan", last_name: "Turing" , homepage: "http://wikipedia.org/Alan_Turing"})
    expect(author.name).to eq("Alan Turing")
  end

  it "if no lastname then redirect" do
    author =  Author.new({first_name: "Alan", last_name: nil, homepage: "http://wikipedia.org/Alan_Turing"})
    expect(author).to_not be_valid
  end


end
