class QuestionsController < ApplicationController
	def create
		@survey = Survey.find(params[:survey_id])
		@question = @survey.questions.create(question_params)
		redirect_to survey_path(@survey)
	end

	private
		def question_params
			params.require(:question).permit(:title, options_attributes: [:id, :name])
		end
end
