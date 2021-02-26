#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

article1 = Article.create(title: "title1",url: "url1.com" ,img_url: "imgurl.com/1", source:"source1", category_id:1)

category1 = Category.create(name:"name1", description:"description1", img_url:"imgurl.com/1" )

upvote1 = Upvote.create(user_id:1, article_id:1)

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

