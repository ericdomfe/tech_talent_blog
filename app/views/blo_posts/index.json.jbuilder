json.array!(@blo_posts) do |blo_post|
  json.extract! blo_post, :id, :title, :author, :blog_entry
  json.url blo_post_url(blo_post, format: :json)
end
