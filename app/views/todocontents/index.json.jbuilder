json.array!(@todocontents) do |todocontent|
  json.extract! todocontent, :id, :name, :done
  json.url todocontent_url(todocontent, format: :json)
end
