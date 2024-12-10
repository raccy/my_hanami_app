# frozen_string_literal: true

module API
  module Actions
    module Books
      class Index < API::Action
        include Deps["repos.book_repo"]

        def handle(request, response)
          books = book_repo.all_by_title

          response.format = :json
          response.body = books.map(&:to_h).to_json
        end
      end
    end
  end
end
