# frozen_string_literal: true

module MyHanamiApp
  module Actions
    module Books
      class Show < MyHanamiApp::Action
        def handle(request, response)
          response.render(view, id: request.params[:id])
        end
      end
    end
  end
end
