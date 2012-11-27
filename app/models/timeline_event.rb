class TimelineEvent < ActiveRecord::Base
  belongs_to :timeline
  belongs_to :event
end
