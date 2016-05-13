get'/users/new' do
  @user = User.new()
erb :'/users/new'
end

get '/users/:user_id' do

  erb :'/users/show'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect "/users/#{@user.id}/questions"
  else
    erb :'/users/new'
  end
end

get '/users/:user_id/questions' do
  @user = User.find(params[:user_id])
  erb :'users/question'
end

get '/users/:id/edit' do

  #your code here

end

put '/users/:id' do

  #your code here

end
