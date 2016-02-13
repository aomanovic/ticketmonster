json.array!(@sections) do |section|
  json.extract! section, :id, :name, :description, :capacity, :venue_layout_id
  json.url section_url(section, format: :json)
end
