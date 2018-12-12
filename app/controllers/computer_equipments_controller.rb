class ComputerEquipmentsController < ApplicationController
  before_action :set_computer_equipment, only: [:show, :edit, :update, :destroy]

  # GET /computer_equipments
  # GET /computer_equipments.json
  def index
    @computer_equipments = ComputerEquipment.all
  end

  # GET /computer_equipments/1
  # GET /computer_equipments/1.json
  def show
  end

  # GET /computer_equipments/new
  def new
    @computer_equipment = ComputerEquipment.new
  end

  # GET /computer_equipments/1/edit
  def edit
  end

  # POST /computer_equipments
  # POST /computer_equipments.json
  def create
    @computer_equipment = ComputerEquipment.new(computer_equipment_params)

    respond_to do |format|
      if @computer_equipment.save
        format.html { redirect_to @computer_equipment, notice: 'Computer equipment was successfully created.' }
        format.json { render :show, status: :created, location: @computer_equipment }
      else
        format.html { render :new }
        format.json { render json: @computer_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /computer_equipments/1
  # PATCH/PUT /computer_equipments/1.json
  def update
    respond_to do |format|
      if @computer_equipment.update(computer_equipment_params)
        format.html { redirect_to @computer_equipment, notice: 'Computer equipment was successfully updated.' }
        format.json { render :show, status: :ok, location: @computer_equipment }
      else
        format.html { render :edit }
        format.json { render json: @computer_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /computer_equipments/1
  # DELETE /computer_equipments/1.json
  def destroy
    @computer_equipment.destroy
    respond_to do |format|
      format.html { redirect_to computer_equipments_url, notice: 'Computer equipment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_computer_equipment
      @computer_equipment = ComputerEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def computer_equipment_params
      params.require(:computer_equipment).permit(:brand, :model, :sku, :value, :status, :observations, :assignment, :category, :quantity)
    end
end
