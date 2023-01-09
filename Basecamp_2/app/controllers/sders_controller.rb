class SdersController < ApplicationController
  before_action :set_sder, only: %i[ show edit update destroy ]

  # GET /sders or /sders.json
  def index
    @project = Project.find(params[:project_id])
    @sders = @project.sders
  end

  # GET /sders/1 or /sders/1.json
  def show
    @project = @sder.project_id
    @send = @sder.sends.new
    @sends = @sder.sends
  end

  # GET /sders/new
  def new
    @project = Project.find(params[:project_id])
    @sder = Sder.new
  end
  
  # GET /sders/1/edit
  def edit
    @project = @sder.project
  end

  # POST /sders or /sders.json
  def create
    @sder = Sder.new(sder_params)

    respond_to do |format|
      if @sder.save
        format.html { redirect_to sder_url(@sder) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sders/1 or /sders/1.json
  def update
    respond_to do |format|
      if @sder.update(sder_params)
        format.html { redirect_to sder_url(@sder) }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sder.destroy

    respond_to do |format|
      format.html { redirect_to project_sders_url(@sder.project) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sder
      @sder = Sder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sder_params
      params.require(:sder).permit(:title, :description, :project_id)
    end
end
