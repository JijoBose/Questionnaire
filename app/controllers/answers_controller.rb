class AnswersController < ApplicationController
	def create
		@survey = Survey.find(params[:survey_id])
		@answer = @survey.answers.create(answer_params)
		redirect_to survey_path(@survey)
	end

	private
		def answer_params
			params.require(:answer).permit(:survey_id)
		end
end
