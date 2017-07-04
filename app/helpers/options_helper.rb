module OptionsHelper
	def list_all_options
	  Option.all
	end

	def sort_options(qid)
		Option.where(question_id: qid)
	end
end
