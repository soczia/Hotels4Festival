require "spec_helper"

describe StaysController do
  describe "routing" do

    it "routes to #index" do
      get("/stays").should route_to("stays#index")
    end

    it "routes to #new" do
      get("/stays/new").should route_to("stays#new")
    end

    it "routes to #show" do
      get("/stays/1").should route_to("stays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stays/1/edit").should route_to("stays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stays").should route_to("stays#create")
    end

    it "routes to #update" do
      put("/stays/1").should route_to("stays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stays/1").should route_to("stays#destroy", :id => "1")
    end

  end
end
