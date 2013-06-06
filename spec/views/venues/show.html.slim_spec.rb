require 'spec_helper'

describe "venues/show" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :title => "Title",
      :address => "Address",
      :lat => "Lat",
      :long => "Long",
      :area => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Address/)
    rendered.should match(/Lat/)
    rendered.should match(/Long/)
    rendered.should match(//)
  end
end
