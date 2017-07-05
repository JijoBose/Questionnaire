class OptionsController < ApplicationController
	def create
		@question = Question.find(params[:question_id])
		@option = @question.options.create(option_params)
		redirect_to question_path(@question)
	end

	def destroy
		@survey = Survey.find(params[:survey_id])
		@option = @survey.options.find(params[:id])
		@option.destroy
		redirect_to survey_path(@survey)		
	end

	private
		def option_params
			params.require(:option).permit(:name)	
		end
end
