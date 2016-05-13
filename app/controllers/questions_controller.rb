get '/users/:user_id/questions' do

  #your code here

end

get '/users/:user_id/questions/new' do
  
  
  #your code here
  erb :"/questions/new"
end

post '/users/:user_id/questions' do

  @question = Question.create(title: params[:title], body: params[:body], user_id: 1)
  if @question
  redirect "/users/:user_id/questions/:id"
  else
    #change this redirect to pass the correct session ID
    redirect '/users/1/questions/new'
  end
end

get '/users/:user_id/questions/:id' do
  # Individual view of a question
  #your code here
  erb :"/users/question"
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
