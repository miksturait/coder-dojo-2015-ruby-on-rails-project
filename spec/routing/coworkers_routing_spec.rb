require "rails_helper"

RSpec.describe CoworkersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coworkers").to route_to("coworkers#index")
    end

    it "routes to #new" do
      expect(:get => "/coworkers/new").to route_to("coworkers#new")
    end

    it "routes to #show" do
      expect(:get => "/coworkers/1").to route_to("coworkers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coworkers/1/edit").to route_to("coworkers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coworkers").to route_to("coworkers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/coworkers/1").to route_to("coworkers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/coworkers/1").to route_to("coworkers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coworkers/1").to route_to("coworkers#destroy", :id => "1")
    end

  end
end
