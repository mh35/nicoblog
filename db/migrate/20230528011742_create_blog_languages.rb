class CreateBlogLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :blog_languages do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
    add_index :blog_languages, :code, unique: true
  end
end
