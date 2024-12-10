# frozen_string_literal: true

module API
  module Actions
    module Books
      class Index < API::Action
        def handle(request, response)
          books = [
            {title: "Test Driven Development"},
            {title: "Practical Object-Oriented Design in Ruby"}
          ]

          response.format = :json
          response.body = books.to_json
        end
      end
    end
  end
end
