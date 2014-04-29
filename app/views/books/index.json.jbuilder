json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :isbn, :title_long
  json.url book_url(book, format: :json)
end
