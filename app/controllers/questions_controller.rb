get '/users/:user_id/questions' do

  #your code here

end

get '/users/:user_id/questions/new' do

  #your code here
  erb :"/questions/new"
end

post '/users/:user_id/questions' do

  #your code here
  redirect "/users/:user_id/questions/:id"
end

get '/users/:user_id/questions/:id' do

  #your code here
  erb :"/users/:id"
end

 get '/users/:user_id/questions/:id/edit' do

  #your code here

end

 put '/users/:user_id/questions/:id' do

  #your code here

end

delete '/users/:user_id/questions/:id' do

  #your code here

end
