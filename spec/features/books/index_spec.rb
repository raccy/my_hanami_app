# frozen_string_literal: true

RSpec.feature "Books index" do
  it "shows a list of books" do
    visit "/books"

    expect(page).to have_css "li", text: "Test Driven Development"
    expect(page).to have_css "li", text: "Practical Object-Oriented Design in Ruby"
  end
end
