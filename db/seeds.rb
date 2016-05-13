5.times do
  User.create(username: Faker::Internet.user_name,
  	password: '123',
  	email: Faker::Internet.email)
end

# 30.times do
#   u_id = rand(1..5)
# User.find_by(id: u_id)
# Question.answers.create(body: Faker::StarWars.quote,
#         user_id: rand(1..User.all.length))

# end

5.times do
  User.all.each do |user|
  user.questions.create(
  	title: Faker::Lorem.sentence,
  	body: Faker::Lorem.paragraph,
  	user_id: rand(1..User.all.length)
  	)
	end
end

3.times do
  	Question.all.each do |question|
  		question.replies.create(
  			body: Faker::StarWars.quote,
  			user_id: rand(1..User.all.length)
  			)
		end
end

3.times do
  	Answer.all.each do |answer|
  		answer.replies.create(
  			body: Faker::StarWars.quote,
  			user_id: rand(1..User.all.length)
  			)
		end
end

3.times do

	Question.all.each do |question|
		question.answers.create(
			body: Faker::Lorem.paragraph,
			user_id: rand(1..User.all.length)
			)
	end

end

3.times do
  Question.all.each do |question|
  	question.votes.create(
  		user_id: rand(1..User.all.length)
  		)
  end
end

3.times do
  Reply.all.each do |reply|
  	reply.votes.create(
  		user_id: rand(1..User.all.length)
  		)
  end
end

3.times do
  Answer.all.each do |answer|
  	answer.votes.create(
  		user_id: rand(1..User.all.length)
  		)
  end
end

