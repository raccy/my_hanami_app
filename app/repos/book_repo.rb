# frozen_string_literal: true

module MyHanamiApp
  module Repos
    class BookRepo < MyHanamiApp::DB::Repo
      def all_by_title(page:, per_page:)
        books
          .order(books[:title].asc)
          .page(page)
          .per_page(per_page)
          .to_a
      end
    end
  end
end
