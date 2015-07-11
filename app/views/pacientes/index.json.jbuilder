json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :firstname, :lastname, :address, :phone, :mobile, :birthdate, :civilstatus, :picture
  json.url paciente_url(paciente, format: :json)
end
