class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :url
      t.string :description
      t.string :borough
      t.string :neighborhood
      t.boolean :free
      
      t.timestamps
    end
  end
end
