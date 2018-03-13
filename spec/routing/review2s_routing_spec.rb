require "rails_helper"

RSpec.describe Review2sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/review2s").to route_to("review2s#index")
    end

    it "routes to #new" do
      expect(:get => "/review2s/new").to route_to("review2s#new")
    end

    it "routes to #show" do
      expect(:get => "/review2s/1").to route_to("review2s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/review2s/1/edit").to route_to("review2s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/review2s").to route_to("review2s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/review2s/1").to route_to("review2s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/review2s/1").to route_to("review2s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/review2s/1").to route_to("review2s#destroy", :id => "1")
    end

  end
end
