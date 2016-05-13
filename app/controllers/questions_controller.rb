get '/users/:user_id/questions' do

  

end

get '/users/:user_id/questions/new' do
  
  
  
  erb :"/questions/new"
end

post '/users/:user_id/questions' do

  @question = Question.create(title: params[:title], body: params[:body], user_id: 1)
  if @question

    #this route needs to be changed 
  redirect "/users/1/questions/#{Question.last.id}"
  else

    #change this redirect to pass the correct session ID
    redirect '/users/1/questions/new'
  end
end

get '/users/:user_id/questions/:id' do

  erb :"/users/question"
end

 get '/users/:user_id/questions/:id/edit' do

  

end

 put '/users/:user_id/questions/:id' do

  

end

delete '/users/:user_id/questions/:id' do

  

end
