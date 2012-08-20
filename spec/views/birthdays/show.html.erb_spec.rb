require 'spec_helper'

describe "birthdays/show" do
  before(:each) do
    @birthday = assign(:birthday, stub_model(Birthday,
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Message/)
  end
end
