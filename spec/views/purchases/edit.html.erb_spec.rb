require 'spec_helper'

describe "purchases/edit.html.erb" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :price => 1.5,
      :where => "MyString",
      :rating => 1,
      :category => "MyString",
      :comment => "MyText",
      :image_url => "MyString"
    ))
  end

  it "renders the edit purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => purchases_path(@purchase), :method => "post" do
      assert_select "input#purchase_price", :name => "purchase[price]"
      assert_select "input#purchase_where", :name => "purchase[where]"
      assert_select "input#purchase_rating", :name => "purchase[rating]"
      assert_select "input#purchase_category", :name => "purchase[category]"
      assert_select "textarea#purchase_comment", :name => "purchase[comment]"
      assert_select "input#purchase_image_url", :name => "purchase[image_url]"
    end
  end
end
