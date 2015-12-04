require 'rails_helper'

RSpec.describe "Kudos", type: :request do
  describe "GET /kudos" do
    it "works! (now write some real specs)" do
      get kudos_path
      expect(response).to have_http_status(200)
    end
  end
end
