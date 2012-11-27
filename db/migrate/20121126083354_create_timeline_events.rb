class CreateTimelineEvents < ActiveRecord::Migration
  def change
    create_table :timeline_events do |t|
      t.references :timeline
      t.references :event

      t.timestamps
    end
    add_index :timeline_events, :timeline_id
    add_index :timeline_events, :event_id
  end
end
