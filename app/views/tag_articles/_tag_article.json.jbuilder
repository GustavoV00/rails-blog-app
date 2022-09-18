json.extract! tag_article, :id, :article_id, :tag_id, :created_at, :updated_at
json.url tag_article_url(tag_article, format: :json)
