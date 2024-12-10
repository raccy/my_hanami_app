# frozen_string_literal: true

module MyHanamiApp
  module Relations
    class Books < MyHanamiApp::DB::Relation
      schema :books, infer: true
    end
  end
end
