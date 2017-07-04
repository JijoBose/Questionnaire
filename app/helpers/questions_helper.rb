module QuestionsHelper
	def sorting_question(sid)
		Question.where(survey_id: sid)
	end
end
