module AnswersHelper
  def select_question_id
    query = Question.all.pluck(:id)
  end
end
