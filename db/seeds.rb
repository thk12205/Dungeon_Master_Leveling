#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# article1 = Article.create(title: "title1",url: "url1.com" ,img_url: "imgurl.com/1", source:"source1", category_id:1)
article2 = Article.create(title: "title2",url: "url2.com" ,img_url: "imgurl.com/2", source:"source2", category_id:2)
article3 = Article.create(title: "title3",url: "url3.com" ,img_url: "imgurl.com/3", source:"source3", category_id:3)
article4 = Article.create(title: "title4",url: "url4.com" ,img_url: "imgurl.com/4", source:"source4", category_id:4)

# category1 = Category.create(name:"name1", description:"description1", img_url:"imgurl.com/1" )
category2 = Category.create(name:"name2", description:"description2", img_url:"imgurl.com/2" )
category3 = Category.create(name:"name3", description:"description3", img_url:"imgurl.com/3" )
category4 = Category.create(name:"name4", description:"description4", img_url:"imgurl.com/4" )
category5 = Category.create(name:"name5", description:"description5", img_url:"imgurl.com/5" )
category6 = Category.create(name:"name6", description:"description6", img_url:"imgurl.com/6" )

# upvote1 = Upvote.create(user_id:1, article_id:1)
upvote2 = Upvote.create(user_id:1, article_id:2)
upvote3 = Upvote.create(user_id:1, article_id:3)
upvote4 = Upvote.create(user_id:1, article_id:4)
upvote5 = Upvote.create(user_id:2, article_id:1)
upvote6 = Upvote.create(user_id:2, article_id:3)
upvote7 = Upvote.create(user_id:3, article_id:2)
upvote8 = Upvote.create(user_id:4, article_id:4)
# create_table "articles", force: :cascade do |t|
#   t.string "title"
#   t.string "url"
#   t.string "img_url"
#   t.string "source"
#   t.integer "category_id"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

# create_table "categories", force: :cascade do |t|
#   t.string "name"
#   t.string "description"
#   t.string "img_url"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

# create_table "upvotes", force: :cascade do |t|
#   t.integer "user_id"
#   t.integer "article_id"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

# create_table "users", force: :cascade do |t|
#   t.string "username"
#   t.string "email"
#   t.string "password_digest"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

