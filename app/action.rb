# auto_register: false
# frozen_string_literal: true

require "hanami/action"
require "dry/monads"
require "rom"

module MyHanamiApp
  class Action < Hanami::Action
    # Provide `Success` and `Failure` for pattern matching on operation results
    include Dry::Monads[:result]

    handle_exception ROM::TupleCountMismatchError => :handle_not_found

    private

    def handle_not_found(_request, response, _exception)
      response.status = 404
      response.format = :html
      response.body = "Not found"
    end
  end
end
