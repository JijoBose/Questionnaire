class SurveysController < ApplicationController
  before_action :set_survey, only: [:result, :preview, :show, :edit, :update, :destroy]
  before_action :admin_owner, only: [:index, :edit, :update, :destroy]

  def admin_owner
    unless current_user.adminstat == true
      flash[:notice] = "Access denied"
      redirect_to root_path
    end
  end

  # GET /surveys
  # GET /surveys.json
  def index
    @surveys = Survey.all
  end

  # GET /surveys/1
  # GET /surveys/1.json
  def show
    @first_value = params[:id]
    preview_survey_path(passed_parameter: params[:id])
    result_survey_path(passed_parameter: params[:id])
  end

  def preview
    @surveys = Survey.all
    @first_value = params[:passed_parameter]
    @get_value = @first_value
  end

  def result
    @surveys1 = Survey.all
    @first_value = params[:passed_parameter]
    @get_value = @first_value
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
  end

  # POST /surveys
  # POST /surveys.json
  def create
    @survey = Survey.new(survey_params)
    @survey.user_id = current_user.id
    respond_to do |format|
      if @survey.save
        format.html { redirect_to @survey, notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveys/1
  # PATCH/PUT /surveys/1.json
  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to @survey, notice: 'Survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.json
  def destroy
    @survey.destroy
    respond_to do |format|
      format.html { redirect_to surveys_url, notice: 'Survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def survey_params
      params.require(:survey).permit(:user_id, :name)
    end
end
