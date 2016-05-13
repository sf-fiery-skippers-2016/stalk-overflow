5.times do
  User.create(username: Faker::Internet.user_name, 
  	password: '123',
  	email: Faker::Internet.email)
end


5.times do
  User.all.each do |user|
  user.questions.create(
  	title: Faker::Lorem.sentence,
  	body: Faker::Lorem.paragraph,
  	user_id: rand(1..User.all.length)
  	)
	end
end

10.times do
  	Question.all.each do |question|
  		question.responses.create(
  			body: Faker::StarWars.quote,
  			user_id: rand(1..User.all.length)
  			)
		end
end

10.times do
  	Answer.all.each do |answer|
  		answer.responses.create(
  			body: Faker::StarWars.quote,
  			user_id: rand(1..User.all.length)
  			)
		end
end

10.times do
  
	Question.all.each do |question|
		question.answers.create(
			body: Faker::Lorem.paragraph,
			user_id: rand(1..User.all.length)
			)
	end

end

10.times do
  Question.all.each do |question|
  	question.votes.create(
  		user_id: rand(1..User.all.length)
  		)
  end
end

10.times do
  Response.all.each do |response|
  	response.votes.create(
  		user_id: rand(1..User.all.length)
  		)
  end
end

10.times do
  Answer.all.each do |answer|
  	answer.votes.create(
  		user_id: rand(1..User.all.length)
  		)
  end
end

