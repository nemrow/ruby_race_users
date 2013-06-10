get '/' do
  erb :index
end

post '/play' do
	@user1 = User.find_or_create_by_name(:name => params[:name1])
	@user2 = User.find_or_create_by_name(:name => params[:name2])
	erb :play
end

post '/winner' do 
	winner = params[:winner]
	users = eval(params[:users])
	user1 = User.create(:name => users[:user_1_id])
	user2 = User.create(:name => users[:user_2_id])
	if @winner == 0
		game = Game.create(:winner_id => user1.id)
	else
		game = Game.create(:winner_id => user2.id)
	end

	Race.create(:user_id => user1.id, :game_id => game.id)
	Race.create(:user_id => user2.id, :game_id => game.id)

	erb :stats, :layout => false
end