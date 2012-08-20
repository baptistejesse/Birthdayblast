require 'spec_helper'

describe "birthdays/index" do
  before(:each) do
    assign(:birthdays, [
      stub_model(Birthday,
        :message => "Message"
      ),
      stub_model(Birthday,
        :message => "Message"
      )
    ])
  end

  it "renders a list of birthdays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
