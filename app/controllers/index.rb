get '/' do
  @questions = Question.order(:created_at)

  erb :index
end
