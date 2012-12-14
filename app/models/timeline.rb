

class Timeline < ActiveRecord::Base
  attr_accessible :caption, :credit, :headline, :media, :startDate, :text, :event_ids

  has_many :timeline_events, dependent: :destroy
  has_many :events, :through => :timeline_events

  def to_label
    headline
  end
end
