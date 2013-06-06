require 'spec_helper'

describe "areas/index" do
  before(:each) do
    assign(:areas, [
      stub_model(Area,
        :title => "Title"
      ),
      stub_model(Area,
        :title => "Title"
      )
    ])
  end

  it "renders a list of areas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
