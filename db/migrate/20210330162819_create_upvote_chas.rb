class CreateUpvoteChas < ActiveRecord::Migration[6.0]
  def change
    create_table :upvote_chas do |t|
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
