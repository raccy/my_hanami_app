# frozen_string_literal: true

module API
  module Actions
    module Books
      class Show < API::Action
        include Deps["repos.book_repo"]

        params do
          required(:id).value(:integer)
        end

        def handle(request, response)
          book = book_repo.get(request.params[:id])

          response.format = :json
          response.body = book.to_h.to_json
        end
      end
    end
  end
end
