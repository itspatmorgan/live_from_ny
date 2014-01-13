class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :headline
      t.string :url
      t.string :lead_paragraph

      t.timestamps
    end
  end
end
