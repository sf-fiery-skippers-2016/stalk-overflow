get'/users/new' do

erb :'/users/new'
end

get '/users/:id' do

  #your code here

end

post '/users' do

  #your code here
  redirect "/user/#{user.id}"
end

get '/users/:id/edit' do

  #your code here

end

put '/users/:id' do

  #your code here

end
