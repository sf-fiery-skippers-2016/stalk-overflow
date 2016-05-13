get '/users/:user_id/questions/new' do
   logged_in?
  @question = Question.new
  erb :"/questions/new"
end

#create new question and save to DB
post '/users/:user_id/questions' do

  @question = User.find(params[:user_id]).questions.new(title: params[:title], body: params[:body])
  if @question.save
  redirect "/users/#{params[:user_id]}/questions/#{@question.id}"
  else
    erb :"/questions/new"
  end
end

#Question Show Page
get '/users/:user_id/questions/:id' do
  @question = Question.find(params[:id])
  erb :"/questions/show"
end

post '/users/:user_id/questions/:id/response' do
#make new response for question
  Question.find(params[:id]).responses.new(body: params[:comment])
  if @question.save
  redirect "/users/#{params[:user_id]}/questions/#{@question.id}"
  else
    erb :"/questions/new"
  end
end

post '/users/:user_id/answers/:id/response' do
#make new response for question
  @question = User.find(params[:user_id]).questions.new(title: params[:title], body: params[:body])
  if @question.save
  redirect "/users/#{params[:user_id]}/questions/#{@question.id}"
  else
    erb :"/questions/new"
  end
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
