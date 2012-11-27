require 'spec_helper'

describe "timeline_events/index" do
  before(:each) do
    assign(:timeline_events, [
      stub_model(TimelineEvent),
      stub_model(TimelineEvent)
    ])
  end

  it "renders a list of timeline_events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
