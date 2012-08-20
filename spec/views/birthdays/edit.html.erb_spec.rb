require 'spec_helper'

describe "birthdays/edit" do
  before(:each) do
    @birthday = assign(:birthday, stub_model(Birthday,
      :message => "MyString"
    ))
  end

  it "renders the edit birthday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => birthdays_path(@birthday), :method => "post" do
      assert_select "input#birthday_message", :name => "birthday[message]"
    end
  end
end
