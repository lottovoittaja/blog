@articles.each do |article|
  json.extract! article, :id, :title
end
