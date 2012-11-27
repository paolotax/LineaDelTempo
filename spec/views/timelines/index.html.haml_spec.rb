require 'spec_helper'

describe "timelines/index" do
  before(:each) do
    assign(:timelines, [
      stub_model(Timeline),
      stub_model(Timeline)
    ])
  end

  it "renders a list of timelines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
