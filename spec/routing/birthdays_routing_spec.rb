require "spec_helper"

describe BirthdaysController do
  describe "routing" do

    it "routes to #index" do
      get("/birthdays").should route_to("birthdays#index")
    end

    it "routes to #new" do
      get("/birthdays/new").should route_to("birthdays#new")
    end

    it "routes to #show" do
      get("/birthdays/1").should route_to("birthdays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/birthdays/1/edit").should route_to("birthdays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/birthdays").should route_to("birthdays#create")
    end

    it "routes to #update" do
      put("/birthdays/1").should route_to("birthdays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/birthdays/1").should route_to("birthdays#destroy", :id => "1")
    end

  end
end
