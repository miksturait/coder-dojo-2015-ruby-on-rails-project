require 'rails_helper'

RSpec.describe "Coworkers", type: :request do
  describe "GET /coworkers" do
    it "works! (now write some real specs)" do
      get coworkers_path
      expect(response).to have_http_status(200)
    end
  end
end
