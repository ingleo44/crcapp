json.array!(@exoptos) do |exopto|
  json.extract! exopto, :id, :exam_id, :status, :optq01, :optq02, :optq03, :optq04, :optq05, :optq06, :optq07, :optq08, :optq09, :optq10, :optq11, :optq12, :optq13, :optq14, :optq15, :optq16
  json.url exopto_url(exopto, format: :json)
end
