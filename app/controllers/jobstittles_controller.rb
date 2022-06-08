class JobstittlesController < ApplicationController
  before_action :set_jobstittle, only: %i[ show edit update destroy ]

  # GET /jobstittles or /jobstittles.json
  def index
    @jobstittles = Jobstittle.all
  end

  # GET /jobstittles/1 or /jobstittles/1.json
  def show
  end

  # GET /jobstittles/new
  def new
    @jobstittle = Jobstittle.new
  end

  # GET /jobstittles/1/edit
  def edit
  end

  # POST /jobstittles or /jobstittles.json
  def create
    @jobstittle = Jobstittle.new(jobstittle_params)

    respond_to do |format|
      if @jobstittle.save
        format.html { redirect_to jobstittle_url(@jobstittle), notice: "Jobstittle was successfully created." }
        format.json { render :show, status: :created, location: @jobstittle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobstittle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobstittles/1 or /jobstittles/1.json
  def update
    respond_to do |format|
      if @jobstittle.update(jobstittle_params)
        format.html { redirect_to jobstittle_url(@jobstittle), notice: "Jobstittle was successfully updated." }
        format.json { render :show, status: :ok, location: @jobstittle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobstittle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobstittles/1 or /jobstittles/1.json
  def destroy
    @jobstittle.destroy

    respond_to do |format|
      format.html { redirect_to jobstittles_url, notice: "Jobstittle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobstittle
      @jobstittle = Jobstittle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobstittle_params
      params.require(:jobstittle).permit(:job_tittle)
    end
end
