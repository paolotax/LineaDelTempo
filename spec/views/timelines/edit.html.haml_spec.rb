require 'spec_helper'

describe "timelines/edit" do
  before(:each) do
    @timeline = assign(:timeline, stub_model(Timeline))
  end

  it "renders the edit timeline form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => timelines_path(@timeline), :method => "post" do
    end
  end
end
