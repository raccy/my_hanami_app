# auto_register: false
# frozen_string_literal: true

module API
  class Action < MyHanamiApp::Action
    private

    def handle_not_found(_request, response, _exception)
      super
      response.format = :json
      response.body = {error: "not_found"}.to_json
    end
  end
end
