

class Timeline < ActiveRecord::Base
  attr_accessible :caption, :credit, :headline, :media, :startDate, :text

  has_many :timeline_events
  has_many :events, :through => :timeline_events

  def to_label
    headline
  end
end
