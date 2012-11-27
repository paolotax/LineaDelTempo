class TimelinesController < ApplicationController

  def index
    @timelines = Timeline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timelines }
    end
  end

  def show
    @timeline = Timeline.find(params[:id])

    @timeline = Timeline.find(params[:id])
    @events   = @timeline.events.where('media IS NOT NULL OR text IS NOT NULL')
    @events_all = @timeline.events.order(:startDate)
    respond_to do |format|
      format.html
      format.json do
        # FIXME: this is terribly ugly but work so far
        dates = @events.map do |event| 
          return_event = event.attributes
          return_event[:asset] = {:media => event.media, :credit => event.credit, :caption => event.caption}
          # return_event['startDate'] = return_event['startDate'].to_s.gsub('-',',')
          # return_event['endDate'] = return_event['endDate'].to_s.gsub('-',',')
          return_event
        end
        timeline = @timeline.attributes
        # timeline[:asset] ={:media => @timeline.media, :credit => @timeline.credit, :caption => @timeline.caption}
        timeline[:type] = 'default'
        timeline[:date] = dates
        hash = {:timeline => timeline}
        render :json => hash.to_json
      end
    end
  end

  def new
    @timeline = Timeline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timeline }
    end
  end

  def edit
    @timeline = Timeline.find(params[:id])
  end

  def create
    @timeline = Timeline.new(params[:timeline])

    respond_to do |format|
      if @timeline.save
        format.html { redirect_to @timeline, notice: 'Timeline was successfully created.' }
        format.json { render json: @timeline, status: :created, location: @timeline }
      else
        format.html { render action: "new" }
        format.json { render json: @timeline.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @timeline = Timeline.find(params[:id])

    respond_to do |format|
      if @timeline.update_attributes(params[:timeline])
        format.html { redirect_to @timeline, notice: 'Timeline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @timeline.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @timeline = Timeline.find(params[:id])
    @timeline.destroy

    respond_to do |format|
      format.html { redirect_to timelines_url }
      format.json { head :no_content }
    end
  end
end
