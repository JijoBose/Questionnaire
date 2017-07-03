module QuestionsHelper
  def answer_list(qid)
    Question.all.where(id: qid)
  end
end
