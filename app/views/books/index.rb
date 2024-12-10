# frozen_string_literal: true

module MyHanamiApp
  module Views
    module Books
      class Index < MyHanamiApp::View
        expose :books do
          [
            {title: "Test Driven Development"},
            {title: "Practical Object-Oriented Design in Ruby"}
          ]
        end
      end
    end
  end
end
