# log in form
get'/sessions/new' do

  #your code here
erb :'/sessions/new'
end

post '/sessions' do

  #your code here
  redirect "/users/#{user.id}"
end

#logout route
get '/sessions/:id' do

  redirect '/'
end
