require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "GET #about" do
    it "responds successfully with an HTTP 200 status code" do
      get :about
      expect(response).to have_http_status(200)
    end
  end

   describe "GET #contact" do
    it "responds successfully with an HTTP 200 status code" do
      get :contact
      expect(response).to have_http_status(200)
    end
  end



end
