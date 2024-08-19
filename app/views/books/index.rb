# frozen_string_literal: true

module MyHanamiApp
  module Views
    module Books
      class Index < MyHanamiApp::View
        include Deps["repos.book_repo"]

        expose :books do |page:, per_page:|
          book_repo.all_by_title(page:, per_page:)
        end
      end
    end
  end
end
