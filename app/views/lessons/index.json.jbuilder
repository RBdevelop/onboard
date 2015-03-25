json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :description, :document, :video_url
  json.url lesson_url(lesson, format: :json)
end
