json.key_format! camelize: :lower

json.array! @products do |product|
  json.(product, :id, :name, :image_url)
end
