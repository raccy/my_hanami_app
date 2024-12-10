# auto_register: false
# frozen_string_literal: true

require "hanami/action"
require "dry/monads"

module MyHanamiApp
  class Action < Hanami::Action # rubocop: disable Style/Documentation
    # Provide `Success` and `Failure` for pattern matching on operation results
    include Dry::Monads[:result]
  end
end
