require 'rails_helper'

RSpec.describe "Lists", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/lists/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/lists/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/lists/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/lists/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
