#route for adding vote to a question
get '/users/:user_id/questions/:question_id/vote' do
	question = Question.find(params[:question_id])
	question.votes.create
  
  redirect "/users/#{session[:id].id}/questions/#{question.id}"
end

#route for adding vote to an answer
get '/users/:user_id/answers/:answer_id/vote' do
  answer = Answer.find(params[:answer_id])
  answer.votes.create

  redirect "/users/#{session[:id].id}/questions/#{answer.question.id}"
end

get '/users/:id/responses/:id/vote' do
  p "hitting post"

end

