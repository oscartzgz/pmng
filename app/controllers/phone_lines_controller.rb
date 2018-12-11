class PhoneLinesController < ApplicationController
  before_action :set_phone_line, only: [:show, :edit, :update, :destroy]

  # GET /phone_lines
  # GET /phone_lines.json
  def index
    @phone_lines = PhoneLine.all
  end

  # GET /phone_lines/1
  # GET /phone_lines/1.json
  def show
  end

  # GET /phone_lines/new
  def new
    @phone_line = PhoneLine.new
  end

  # GET /phone_lines/1/edit
  def edit
  end

  # POST /phone_lines
  # POST /phone_lines.json
  def create
    @phone_line = PhoneLine.new(phone_line_params)

    respond_to do |format|
      if @phone_line.save
        format.html { redirect_to @phone_line, notice: 'Phone line was successfully created.' }
        format.json { render :show, status: :created, location: @phone_line }
      else
        format.html { render :new }
        format.json { render json: @phone_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_lines/1
  # PATCH/PUT /phone_lines/1.json
  def update
    respond_to do |format|
      if @phone_line.update(phone_line_params)
        format.html { redirect_to @phone_line, notice: 'Phone line was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_line }
      else
        format.html { render :edit }
        format.json { render json: @phone_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_lines/1
  # DELETE /phone_lines/1.json
  def destroy
    @phone_line.destroy
    respond_to do |format|
      format.html { redirect_to phone_lines_url, notice: 'Phone line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_line
      @phone_line = PhoneLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_line_params
      params.require(:phone_line).permit(:number, :SIM_key)
    end
end
