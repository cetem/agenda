json.array!(@personas) do |persona|
  json.extract! persona, :id, :nombre, :apellido
end
