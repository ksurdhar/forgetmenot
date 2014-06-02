ActiveRecord::Schema.define(version: 20140528181719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "relationships", force: true do |t|
    t.datetime "last_contact"
    t.integer  "follower_id"
    t.integer  "followed_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_user_id"], name: "index_relationships_on_followed_user_id", using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "token"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
