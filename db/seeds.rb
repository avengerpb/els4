30.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  avatar = "http://images.bidorbuy.co.za/user_images/
  079/1816079/1816079_140923182414_Ironman_square_pic.jpg"
  User.create!(name: name,
               email: email,
               avatar: avatar,
               password: password,
               password_confirmation: password)
end

5.times do |n|
  name = Faker::Lorem.words(5)
  language = "English"
  Course.create!(name: name,
               language: language)
end

100.times do |n|
  word = Faker::Lorem.words(2..10)
  meaning = Faker::Lorem.words(2..10)
  sound = "https://www.freesound.org/people/ljudman/sounds/33245/"
  course_id = rand(1..5)
  Word.create!(word: word,
               meaning: meaning,
               sound: sound,
               course_id: course_id)
end
