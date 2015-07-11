json.array!(@ant_patologicos) do |ant_patologico|
  json.extract! ant_patologico, :id, :name
  json.url ant_patologico_url(ant_patologico, format: :json)
end
