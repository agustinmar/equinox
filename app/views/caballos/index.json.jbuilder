json.array!(@caballos) do |caballo|
  json.extract! caballo, :id, :nombre, :padre, :madre, :fechanac, :lugarnac, :sexo, :color, :peso, :alzada, :propietario, :convenio, :defuncion
  json.url caballo_url(caballo, format: :json)
end
