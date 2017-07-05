module QuestionsHelper
	def listing_question(sid)
		#Question.where(survey_id: sid).pluck(:id)
		#Question.select(:title, :id).where(:survey_id => sid).map{|c| [ c.title, c.id ]}
		Question.where(survey_id: sid)
	end

	def sorting_question(sid)
		Question.where(survey_id: sid)
	end

	def listing_options(qid)
		Option.where(question_id: qid)		
	end

	def counting_options(qid, optid)
		Answer.where(question_id: qid).where(option_id: optid).count()
	end
end
