require 'spec_helper'

describe "purchases/index.html.erb" do
  before(:each) do
    assign(:purchases, [
      stub_model(Purchase,
        :price => 1.5,
        :where => "Where",
        :rating => 1,
        :category => "Category",
        :comment => "MyText",
        :image_url => "Image Url"
      ),
      stub_model(Purchase,
        :price => 1.5,
        :where => "Where",
        :rating => 1,
        :category => "Category",
        :comment => "MyText",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of purchases" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Where".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
