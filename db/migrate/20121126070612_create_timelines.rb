class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.string :headline
      t.string :startDate
      t.text   :text
      t.string :media
      t.string :credit
      t.string :caption
      t.timestamps
    end
  end
end
