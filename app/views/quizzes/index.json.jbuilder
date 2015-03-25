json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :title, :description, :document, :quiz_url
  json.url quiz_url(quiz, format: :json)
end
