# frozen_string_literal: true

module MyHanamiApp
  class Routes < Hanami::Routes
    root to: "home.index"
    get "/books", to: "books.index"
  end
end
