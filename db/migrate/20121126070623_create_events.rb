class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :headline
      t.string :startDate
      t.string :endDate
      t.text :text
      t.string :media
      t.string :credit
      t.string :caption
      t.string :thumbnail
      t.string :media_filename
      t.timestamps
    end
  end
end
