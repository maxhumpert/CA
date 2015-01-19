json.array!(@quests) do |quest|
  json.extract! quest, :id, :title, :description, :points
  json.url quest_url(quest, format: :json)
end
