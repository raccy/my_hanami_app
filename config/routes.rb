# frozen_string_literal: true

module MyHanamiApp
  class Routes < Hanami::Routes
    root to: "home.index"
    get "/books", to: "books.index"
    get "/books/:id", to: "books.show", as: :show_book
    get "/books/new", to: "books.new"
    post "/books", to: "books.create", as: :create_book

    slice :api, at: "/api" do
      root to: "home.index"
    end
  end
end
