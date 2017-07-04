module QuestionsHelper
	def listing_question(sid)
		#Question.where(survey_id: sid).pluck(:id)
		Question.select(:title, :id).where(:survey_id => sid).map{|c| [ c.title, c.id ]}
	end

	def sorting_question(sid)
		Question.where(survey_id: sid)
	end
end
