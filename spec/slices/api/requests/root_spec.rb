# spec/requests/root_spec.rb

RSpec.describe "Root", type: :request do
  it "is successful" do
    get "/api"

    expect(last_response.body).to eq("Welcome to MyHanamiApp")
    expect(last_response).to be_successful
  end
end
