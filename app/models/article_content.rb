class ArticleContent < ApplicationRecord
  belongs_to :article
  belongs_to :blog_language
end
