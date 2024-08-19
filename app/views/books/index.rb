# frozen_string_literal: true

module MyHanamiApp
  module Views
    module Books
      class Index < MyHanamiApp::View
        include Deps["repos.book_repo"]

        expose :books do
          book_repo.all_by_title
        end
      end
    end
  end
end
