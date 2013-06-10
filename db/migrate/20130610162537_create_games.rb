class CreateGames < ActiveRecord::Migration
  def change
  	create_table :games do |g|
  		g.integer :winner_id
  		g.integer :seconds_to_win
  	end
  end
end
