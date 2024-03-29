require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TimelineEventsController do

  # This should return the minimal set of attributes required to create a valid
  # TimelineEvent. As you add validations to TimelineEvent, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TimelineEventsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all timeline_events as @timeline_events" do
      timeline_event = TimelineEvent.create! valid_attributes
      get :index, {}, valid_session
      assigns(:timeline_events).should eq([timeline_event])
    end
  end

  describe "GET show" do
    it "assigns the requested timeline_event as @timeline_event" do
      timeline_event = TimelineEvent.create! valid_attributes
      get :show, {:id => timeline_event.to_param}, valid_session
      assigns(:timeline_event).should eq(timeline_event)
    end
  end

  describe "GET new" do
    it "assigns a new timeline_event as @timeline_event" do
      get :new, {}, valid_session
      assigns(:timeline_event).should be_a_new(TimelineEvent)
    end
  end

  describe "GET edit" do
    it "assigns the requested timeline_event as @timeline_event" do
      timeline_event = TimelineEvent.create! valid_attributes
      get :edit, {:id => timeline_event.to_param}, valid_session
      assigns(:timeline_event).should eq(timeline_event)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TimelineEvent" do
        expect {
          post :create, {:timeline_event => valid_attributes}, valid_session
        }.to change(TimelineEvent, :count).by(1)
      end

      it "assigns a newly created timeline_event as @timeline_event" do
        post :create, {:timeline_event => valid_attributes}, valid_session
        assigns(:timeline_event).should be_a(TimelineEvent)
        assigns(:timeline_event).should be_persisted
      end

      it "redirects to the created timeline_event" do
        post :create, {:timeline_event => valid_attributes}, valid_session
        response.should redirect_to(TimelineEvent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved timeline_event as @timeline_event" do
        # Trigger the behavior that occurs when invalid params are submitted
        TimelineEvent.any_instance.stub(:save).and_return(false)
        post :create, {:timeline_event => {  }}, valid_session
        assigns(:timeline_event).should be_a_new(TimelineEvent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TimelineEvent.any_instance.stub(:save).and_return(false)
        post :create, {:timeline_event => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested timeline_event" do
        timeline_event = TimelineEvent.create! valid_attributes
        # Assuming there are no other timeline_events in the database, this
        # specifies that the TimelineEvent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TimelineEvent.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => timeline_event.to_param, :timeline_event => { "these" => "params" }}, valid_session
      end

      it "assigns the requested timeline_event as @timeline_event" do
        timeline_event = TimelineEvent.create! valid_attributes
        put :update, {:id => timeline_event.to_param, :timeline_event => valid_attributes}, valid_session
        assigns(:timeline_event).should eq(timeline_event)
      end

      it "redirects to the timeline_event" do
        timeline_event = TimelineEvent.create! valid_attributes
        put :update, {:id => timeline_event.to_param, :timeline_event => valid_attributes}, valid_session
        response.should redirect_to(timeline_event)
      end
    end

    describe "with invalid params" do
      it "assigns the timeline_event as @timeline_event" do
        timeline_event = TimelineEvent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TimelineEvent.any_instance.stub(:save).and_return(false)
        put :update, {:id => timeline_event.to_param, :timeline_event => {  }}, valid_session
        assigns(:timeline_event).should eq(timeline_event)
      end

      it "re-renders the 'edit' template" do
        timeline_event = TimelineEvent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TimelineEvent.any_instance.stub(:save).and_return(false)
        put :update, {:id => timeline_event.to_param, :timeline_event => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested timeline_event" do
      timeline_event = TimelineEvent.create! valid_attributes
      expect {
        delete :destroy, {:id => timeline_event.to_param}, valid_session
      }.to change(TimelineEvent, :count).by(-1)
    end

    it "redirects to the timeline_events list" do
      timeline_event = TimelineEvent.create! valid_attributes
      delete :destroy, {:id => timeline_event.to_param}, valid_session
      response.should redirect_to(timeline_events_url)
    end
  end

end
