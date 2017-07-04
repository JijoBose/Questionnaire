class OptionsController < ApplicationController
	def create
		@question = Question.find(params[:question_id])
		@option = @question.options.create(option_params)
		redirect_to question_path(@question)
	end

	private
		def option_params
			params.require(:option).permit(:name)	
		end
end