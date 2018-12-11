class PhoneDevicesController < ApplicationController
  before_action :set_phone_device, only: [:show, :edit, :update, :destroy]
  before_action :get_available_phone_lines, only: [:new, :edit, :create]

  # GET /phone_devices
  # GET /phone_devices.json
  def index
    @phone_devices = PhoneDevice.all
  end

  # GET /phone_devices/1
  # GET /phone_devices/1.json
  def show
  end

  # GET /phone_devices/new
  def new
    @phone_device = PhoneDevice.new
  end

  # GET /phone_devices/1/edit
  def edit
  end

  # POST /phone_devices
  # POST /phone_devices.json
  def create
    @phone_device = PhoneDevice.new(phone_device_params)

    respond_to do |format|
      if @phone_device.save
        format.html { redirect_to @phone_device, notice: 'Phone device was successfully created.' }
        format.json { render :show, status: :created, location: @phone_device }
      else
        format.html { render :new }
        format.json { render json: @phone_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_devices/1
  # PATCH/PUT /phone_devices/1.json
  def update
    respond_to do |format|
      if @phone_device.update(phone_device_params)
        format.html { redirect_to @phone_device, notice: 'Phone device was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_device }
      else
        format.html { render :edit }
        format.json { render json: @phone_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_devices/1
  # DELETE /phone_devices/1.json
  def destroy
    @phone_device.destroy
    respond_to do |format|
      format.html { redirect_to phone_devices_url, notice: 'Phone device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Get not assigned phone lines
    def get_available_phone_lines
      not_available_phone_lines_ids = PhoneDevice.where.not(phone_line_id: nil).map { |e| e.phone_line_id }
      if @phone_device && @phone_device.phone_line.present?
        include_id = not_available_phone_lines_ids.index @phone_device.phone_line_id
        not_available_phone_lines_ids.delete_at include_id
      end
      @available_phone_lines = PhoneLine.where.not(id: not_available_phone_lines_ids)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_device
      @phone_device = PhoneDevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_device_params
      params.require(:phone_device).permit(:brand, :model, :sku, :value, :status, :observations, :assignment, :quantity, :IMEI, :phone_line_id)
    end
end
