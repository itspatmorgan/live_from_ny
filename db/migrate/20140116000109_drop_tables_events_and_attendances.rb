class DropTablesEventsAndAttendances < ActiveRecord::Migration
  def up
    drop_table :events
    drop_table :attendances
  end

  def down
    create_table :events do |t|
      t.string :name
      t.string :url
      t.string :description
      t.string :borough
      t.string :neighborhood
      t.boolean :free
      
      t.timestamps
    end
    create_table :attendances do |t|
      t.integer :user_id
      t.integer :event_id
      
      t.timestamps
    end
  end
end
