json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :isbn, :image
  json.url book_url(book, format: :json)
end
