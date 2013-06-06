require 'spec_helper'

describe "venues/index" do
  before(:each) do
    assign(:venues, [
      stub_model(Venue,
        :title => "Title",
        :address => "Address",
        :lat => "Lat",
        :long => "Long",
        :area => nil
      ),
      stub_model(Venue,
        :title => "Title",
        :address => "Address",
        :lat => "Lat",
        :long => "Long",
        :area => nil
      )
    ])
  end

  it "renders a list of venues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Lat".to_s, :count => 2
    assert_select "tr>td", :text => "Long".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
