class CreateArticleMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :article_markers do |t|
      t.integer :exp
      t.boolean :utilized
      t.text :notes

      t.timestamps
    end
  end
end
