# frozen_string_literal: true

require "hanami"

module MyHanamiApp
  class App < Hanami::App
    config.actions.sessions = :cookie, {
      key: "bookshelf.session",
      secret: settings.session_secret,
      expire_after: 60 * 60 * 24 * 365
    }
    config.shared_app_component_keys += ["repos.book_repo"]
    config.middleware.use :body_parser, :json
  end
end
