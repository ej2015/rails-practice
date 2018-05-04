require "rails_helper"

RSpec.describe MaidsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/maids").to route_to("maids#index")
    end

    it "routes to #new" do
      expect(:get => "/maids/new").to route_to("maids#new")
    end

    it "routes to #show" do
      expect(:get => "/maids/1").to route_to("maids#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/maids/1/edit").to route_to("maids#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/maids").to route_to("maids#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/maids/1").to route_to("maids#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/maids/1").to route_to("maids#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/maids/1").to route_to("maids#destroy", :id => "1")
    end

  end
end
