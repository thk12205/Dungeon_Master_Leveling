class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :name
      t.string :game

      t.timestamps
    end
  end
end
