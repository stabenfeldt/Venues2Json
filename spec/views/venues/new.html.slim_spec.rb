require 'spec_helper'

describe "venues/new" do
  before(:each) do
    assign(:venue, stub_model(Venue,
      :title => "MyString",
      :address => "MyString",
      :lat => "MyString",
      :long => "MyString",
      :area => nil
    ).as_new_record)
  end

  it "renders new venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", venues_path, "post" do
      assert_select "input#venue_title[name=?]", "venue[title]"
      assert_select "input#venue_address[name=?]", "venue[address]"
      assert_select "input#venue_lat[name=?]", "venue[lat]"
      assert_select "input#venue_long[name=?]", "venue[long]"
      assert_select "input#venue_area[name=?]", "venue[area]"
    end
  end
end
