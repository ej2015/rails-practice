require 'rails_helper'

RSpec.describe "Maids", type: :request do
  describe "GET /maids" do
    it "works! (now write some real specs)" do
      get maids_path
      expect(response).to have_http_status(200)
    end
  end
end
