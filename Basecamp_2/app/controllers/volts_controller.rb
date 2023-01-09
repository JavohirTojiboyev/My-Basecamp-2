class VoltsController < ApplicationController
  before_action :set_volt, only: %i[ show edit update destroy ]

  # GET /volts or /volts.json
  def index
    @volts = Volt.all
  end

  # GET /volts/1 or /volts/1.json
  def show
  end

  # GET /volts/new
  def new
    @volt = Volt.new
  end

  # GET /volts/1/edit
  def edit
  end

  # POST /volts or /volts.json
  def create
    @volt = Volt.new(volt_params)

    respond_to do |format|
      if @volt.save
        format.html { redirect_to project_path(@volt.project) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /volts/1 or /volts/1.json
  def update
    respond_to do |format|
      if @volt.update(volt_params)
        format.html { redirect_to volt_url(@volt), notice: "Volt was successfully updated." }
        format.json { render :show, status: :ok, location: @volt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @volt.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @volt.destroy

    respond_to do |format|
      format.html { redirect_to project_path(@volt.project) }
    end
  end

  private
    def set_volt
      @volt = Volt.find(params[:id])
    end

    def volt_params
      params.require(:volt).permit(:title, :project_id, :vol)
    end
end
