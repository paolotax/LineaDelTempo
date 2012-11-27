require 'spec_helper'

describe "timeline_events/show" do
  before(:each) do
    @timeline_event = assign(:timeline_event, stub_model(TimelineEvent))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
