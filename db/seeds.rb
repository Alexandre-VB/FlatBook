alex = User.new(email: 'alex@gmail.com', password: '123456', address: "45", profil: "locataire")
alex.save

t1 = Topic.new(description: 'fête des voisins', user_id: alex.id)
t1.save

puts "topic created"

answer = Answer.new(description: 'présent', user_id: alex.id, topic_id: t1.id)
answer.save
