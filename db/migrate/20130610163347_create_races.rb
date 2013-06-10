class CreateRaces < ActiveRecord::Migration
  def change
  	create_table :races do |r|
  		r.integer :user_id
  		r.integer :game_id
  		r.timestamps
  	end
  end
end
