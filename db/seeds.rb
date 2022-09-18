# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


users = User.create([
    {:email => "admin@admin", :password => "admin123", :admin => true},
    {:email => "user1@user1", :password => "user123", :admin => false},
    {:email => "user2@user2", :password => "user123", :admin => false},
    {:email => "user3@user3", :password => "user123", :admin => false},
  ])

users.each do |u|
    u.save()
end

profiles = Profile.create([
    {:age => 22, :first_name => "FirstName Admin", :last_name => "LastName Admin", :interests => "Interest X", :about => "About admin", :user => users[0]},
    {:age => 35, :first_name => "FirstName User1", :last_name => "LastName User2", :interests => "Interest Y", :about => "About user 1", :user => users[1]},
    {:age => 25, :first_name => "FirstName User2", :last_name => "LastName User3", :interests => "Interest Z", :about => "About user 2", :user => users[2]},
    {:age => 42, :first_name => "FirstName User3", :last_name => "LastName User4", :interests => "Interest K", :about => "About user 3", :user => users[3]},
])


articles = []

(0..100).each do |i|
  user = rand(0..3)
  article = Article.create(
    {:title => "Title #{i}", :descri => "This is one description from article with title #{i}", :body => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", :user => users[user]},
  )

  articles.append(article)
end

(0..300).each do |i|
    user = rand(0..3)
    article = rand(0..100)

    Comment.create(
      {:comment => "This is the Comment #{i}", :article => articles[article], :user => users[user]},
    )
end

tags = []
(0..100).each do |i|
  tag = Tag.create(
    {:tag_name => "TagName #{i}"},
  )

  tags.append(tag)
end


(0..100).each do |i|
  article = rand(0..100)
  tag = rand(0..100)
  TagArticle.create(
    {:article => articles[article], :tag => tags[tag]},
  )
end