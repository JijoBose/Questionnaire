class AnswersController < ApplicationController
	def create
		@answer = Answer.new(answer_params)
		@answer.user_id = current_user.id
		@answer.save
		#@survey = Survey.find(params[:survey_id])
		#@answer = @survey.answers.create(answer_params)
		#redirect_to survey_path(@survey)
	end

	private
		def answer_params
			params.require(:answer).permit(:user_id, :question_id, :survey_id, :option_id)
		end
end
