json.array!(@exfonos) do |exfono|
  json.extract! exfono, :id, :exam_id, :status, :fonq01, :fonq02, :fonq03, :fonq04, :fonq05, :fonq06, :fonq07, :fonq08, :fonq09, :fonq10, :fonq11, :fonq12, :fonq13, :fonq14, :fonq15, :fonq16, :fonq17
  json.url exfono_url(exfono, format: :json)
end
