#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


article1 = Article.create(title: "Why These Tactics?", url: "https://www.themonstersknow.com/why-these-tactics/", img_url: "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982122669/the-monsters-know-what-theyre-doing-9781982122669_hr.jpg", source: "Keith Ammann", category_id: "1", upvotes_total: "50", upvoted: "TRUE")
article2 = Article.create(title: "Roleplaying, Running the Game #83", url: "https://www.youtube.com/watch?v=7YCVHnItKuY", img_url: "https://i.ytimg.com/an_webp/7YCVHnItKuY/mqdefault_6s.webp?du=3000&sqp=CJL7ooEG&rs=AOn4CLA25S5rr86yio2o73mVTMseDVrAdg", source: "Matt Colville", category_id: "6", upvotes_total: "35", upvoted: "FALSE")
article3 = Article.create(title: "Let's Kill A PC! Running the Game #68", url: "https://www.youtube.com/watch?v=xZdS8lP-Sdo", img_url: "https://i.ytimg.com/an_webp/xZdS8lP-Sdo/mqdefault_6s.webp?du=3000&sqp=CLqeo4EG&rs=AOn4CLAW8L5NW3rzOjFSjNvaITJOoFZVHg", source: "Matt Colville", category_id: "5", upvotes_total: "45", upvoted: "TRUE")
article4 = Article.create(title: "Downtime, Running the Game #86", url: "https://www.youtube.com/watch?v=2fZWUPxUmYQ", img_url: "https://i.ytimg.com/an_webp/2fZWUPxUmYQ/mqdefault_6s.webp?du=3000&sqp=CLSAo4EG&rs=AOn4CLCtFOobPYgPakeXzY4GHtyXF7jETg", source: "Matt Colville", category_id: "3", upvotes_total: "24", upvoted: "FALSE")

category1 = Category.create(name:"STR", description:"description1", img_url:"imgurl.com/1" )
category2 = Category.create(name:"DEX", description:"description2", img_url:"imgurl.com/2" )
category3 = Category.create(name:"CON", description:"description3", img_url:"imgurl.com/3" )
category4 = Category.create(name:"INT", description:"description4", img_url:"imgurl.com/4" )
category5 = Category.create(name:"WIS", description:"description5", img_url:"imgurl.com/5" )
category6 = Category.create(name:"CHA", description:"description6", img_url:"imgurl.com/6" )

upvote1 = Upvote.create(user_id:1, article_id:1)
upvote2 = Upvote.create(user_id:1, article_id:2)
upvote3 = Upvote.create(user_id:1, article_id:3)
upvote4 = Upvote.create(user_id:1, article_id:4)
upvote5 = Upvote.create(user_id:2, article_id:1)
upvote6 = Upvote.create(user_id:2, article_id:3)
upvote7 = Upvote.create(user_id:3, article_id:2)
upvote8 = Upvote.create(user_id:4, article_id:4)