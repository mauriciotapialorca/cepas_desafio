class CenologistsController < ApplicationController
  before_action :set_cenologist, only: %i[ show edit update destroy ]

  # GET /cenologists or /cenologists.json
  def index
    @cenologists = Cenologist.all
  end

  # GET /cenologists/1 or /cenologists/1.json
  def show
  end

  # GET /cenologists/new
  def new
    @cenologist = Cenologist.new
  end

  # GET /cenologists/1/edit
  def edit
  end

  # POST /cenologists or /cenologists.json
  def create
    @cenologist = Cenologist.new(cenologist_params)

    respond_to do |format|
      if @cenologist.save
        format.html { redirect_to cenologist_url(@cenologist), notice: "Cenologist was successfully created." }
        format.json { render :show, status: :created, location: @cenologist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cenologists/1 or /cenologists/1.json
  def update
    respond_to do |format|
      if @cenologist.update(cenologist_params)
        format.html { redirect_to cenologist_url(@cenologist), notice: "Cenologist was successfully updated." }
        format.json { render :show, status: :ok, location: @cenologist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cenologist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cenologists/1 or /cenologists/1.json
  def destroy
    @cenologist.destroy

    respond_to do |format|
      format.html { redirect_to cenologists_url, notice: "Cenologist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cenologist
      @cenologist = Cenologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cenologist_params
      params.require(:cenologist).permit(:name)
    end
end
