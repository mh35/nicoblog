# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_28_012557) do
  create_table "article_contents", force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "blog_language_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id", "blog_language_id"], name: "index_article_contents_on_article_id_and_blog_language_id", unique: true
    t.index ["article_id"], name: "index_article_contents_on_article_id"
    t.index ["blog_language_id"], name: "index_article_contents_on_blog_language_id"
  end

  create_table "article_titles", force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "blog_language_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id", "blog_language_id"], name: "index_article_titles_on_article_id_and_blog_language_id", unique: true
    t.index ["article_id"], name: "index_article_titles_on_article_id"
    t.index ["blog_language_id"], name: "index_article_titles_on_blog_language_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_articles_on_slug", unique: true
  end

  create_table "blog_languages", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_blog_languages_on_code", unique: true
  end

  add_foreign_key "article_contents", "articles"
  add_foreign_key "article_contents", "blog_languages"
  add_foreign_key "article_titles", "articles"
  add_foreign_key "article_titles", "blog_languages"
end
