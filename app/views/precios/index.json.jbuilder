json.array!(@precios) do |precio|
  json.extract! precio, :id, :caballo_id, :cliente_id, :importe, :tipo_id, :moneda_id
  json.url precio_url(precio, format: :json)
end
