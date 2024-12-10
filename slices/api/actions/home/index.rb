# frozen_string_literal: true

module API
  module Actions
    module Home
      class Index < API::Action
        def handle(request, response)
          response.body = "Welcome to MyHanamiApp"
        end
      end
    end
  end
end
