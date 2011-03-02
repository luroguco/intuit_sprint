require 'spec_helper'

describe "transactions/new.html.erb" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :description => "MyString",
      :original_description => "MyString",
      :amount => 1.5,
      :type => "MyString",
      :category => "MyString",
      :label => "MyString",
      :note => "MyText"
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path, :method => "post" do
      assert_select "input#transaction_description", :name => "transaction[description]"
      assert_select "input#transaction_original_description", :name => "transaction[original_description]"
      assert_select "input#transaction_amount", :name => "transaction[amount]"
      assert_select "input#transaction_type", :name => "transaction[type]"
      assert_select "input#transaction_category", :name => "transaction[category]"
      assert_select "input#transaction_label", :name => "transaction[label]"
      assert_select "textarea#transaction_note", :name => "transaction[note]"
    end
  end
end
