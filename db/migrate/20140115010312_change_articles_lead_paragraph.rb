class ChangeArticlesLeadParagraph < ActiveRecord::Migration
  def up
    change_table :articles do |t|
      t.change :lead_paragraph, :text
    end
  end

  def down
    change_table :articles do |t|
      t.change :lead_paragraph, :string
    end
  end
end