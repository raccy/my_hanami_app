# frozen_string_literal: true

module MyHanamiApp
  module Relations
    class Books < MyHanamiApp::DB::Relation
      schema :books, infer: true

      use :pagination
      per_page 5
    end
  end
end
