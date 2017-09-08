# frozen_string_literal: true

json.key_format! camelize: :lower

json.array! @products do |product|
  json.call(product, :id, :name, :image_url)
end
