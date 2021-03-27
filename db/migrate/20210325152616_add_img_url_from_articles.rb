class AddImgUrlFromArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :img_url, :text
  end
end
