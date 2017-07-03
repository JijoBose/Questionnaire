module QuestionsHelper
  def answer_list(qid)
    Question.all.where(id: qid)
  end

  def list_all_options(qid)
    Option.all.where(question_id: qid)
  end
end
