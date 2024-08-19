# frozen_string_literal: true

module MyHanamiApp
  module Repos
    class BookRepo < MyHanamiApp::DB::Repo
      def all_by_title
        books.order(books[:title].asc).to_a
      end
    end
  end
end
