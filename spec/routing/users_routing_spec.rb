require "spec_helper"

describe UsersController do
  describe "routing" do

    it "routes to #new" do
      get("/users/sign_in").should route_to("devise/sessions#new")
    end

    it "routes to #create" do
      post("/users/sign_in").should route_to("devise/sessions#create")
    end

    it "routes to #destroy" do
      delete("/users/sign_out").should route_to("devise/sessions#destroy")
    end

  end
end