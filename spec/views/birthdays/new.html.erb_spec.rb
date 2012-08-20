require 'spec_helper'

describe "birthdays/new" do
  before(:each) do
    assign(:birthday, stub_model(Birthday,
      :message => "MyString"
    ).as_new_record)
  end

  it "renders new birthday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => birthdays_path, :method => "post" do
      assert_select "input#birthday_message", :name => "birthday[message]"
    end
  end
end
