class CreateArticleTitles < ActiveRecord::Migration[7.0]
  def change
    create_table :article_titles do |t|
      t.references :article, null: false, foreign_key: true
      t.references :blog_language, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
    add_index :article_titles, [:article_id, :blog_language_id], unique: true
  end
end
