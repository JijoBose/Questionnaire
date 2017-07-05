class AnswersController < ApplicationController
	def create
		@survey = Survey.find(params[:survey_id])
		@answer = @survey.answers.create(answer_params)
		#redirect_to survey_path(@survey)

		# respond_to do |format|
  #     		if @survey.save
  #       		format.html { redirect_to preview_survey_path, notice: 'Answer was successfully created.' }
  #       		format.json { render :show, status: :created, location: @answer }
  #     		else
  #       		format.html { render :new }
  #       		format.json { render json: @survey.errors, status: :unprocessable_entity }
  #     		end
  #   	end

	end

	private
		def answer_params
			params.require(:answer).permit(:question_id, :survey_id, :option_id)
		end
end
