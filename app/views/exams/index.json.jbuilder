json.array!(@exams) do |exam|
  json.extract! exam, :id, :paciente_id, :date, :status
  json.url exam_url(exam, format: :json)
end
