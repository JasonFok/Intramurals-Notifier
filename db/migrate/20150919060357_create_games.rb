class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string :date_time
      t.string :location
      t.references :team, index: true

      t.timestamps null: false
    end
  end
end
