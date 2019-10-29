json.array! @quizzes do |quiz|
  json.id quiz.id
  json.quiz quiz.quiz
  json.explanation quiz.explanation
end