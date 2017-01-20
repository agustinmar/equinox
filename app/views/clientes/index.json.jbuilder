json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :paterno, :materno, :telefono, :movil, :correo, :domicilio, :ciudad, :pais
  json.url cliente_url(cliente, format: :json)
end
