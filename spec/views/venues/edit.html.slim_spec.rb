require 'spec_helper'

describe "venues/edit" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :title => "MyString",
      :address => "MyString",
      :lat => "MyString",
      :long => "MyString",
      :area => nil
    ))
  end

  it "renders the edit venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do
      assert_select "input#venue_title[name=?]", "venue[title]"
      assert_select "input#venue_address[name=?]", "venue[address]"
      assert_select "input#venue_lat[name=?]", "venue[lat]"
      assert_select "input#venue_long[name=?]", "venue[long]"
      assert_select "input#venue_area[name=?]", "venue[area]"
    end
  end
end
