# frozen_string_literal: true

module MyHanamiApp
  class Routes < Hanami::Routes
    root to: "home.show"
    get "/books", to: "books.index"
    get "/books/:id", to: "books.show"
  end
end
