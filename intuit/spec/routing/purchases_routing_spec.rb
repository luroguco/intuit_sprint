require "spec_helper"

describe PurchasesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/purchases" }.should route_to(:controller => "purchases", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/purchases/new" }.should route_to(:controller => "purchases", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/purchases/1" }.should route_to(:controller => "purchases", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/purchases/1/edit" }.should route_to(:controller => "purchases", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/purchases" }.should route_to(:controller => "purchases", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/purchases/1" }.should route_to(:controller => "purchases", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/purchases/1" }.should route_to(:controller => "purchases", :action => "destroy", :id => "1")
    end

  end
end
