json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :id, :chapters_total, :chapters_completed, :notes, :url, :title, :page_number, :git_repo
  json.url bookmark_url(bookmark, format: :json)
end
