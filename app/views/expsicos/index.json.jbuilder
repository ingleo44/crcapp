json.array!(@expsicos) do |expsico|
  json.extract! expsico, :id, :exam_id, :status, :psiq01, :psiq02, :psiq03, :psiq04, :psiq05, :psiq06, :psiq07, :psiq08, :psiq09, :psiq10, :psiq11, :psiq12, :psiq13, :psiq14, :psiq15, :psiq16, :psiq17, :psiq18, :psiq19, :psiq20, :psiq21
  json.url expsico_url(expsico, format: :json)
end
