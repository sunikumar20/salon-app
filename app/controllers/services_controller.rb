class ServicesController < ApplicationController
  before_action :set_service, only: %i[ show edit update destroy ]
  before_action :set_salon, only: %i[ index new create show edit update destroy ]

  # GET salons/:salon_id/services or /services.json
  def index
    @services = @salon.services.includes(:bookings_services)
  end

  # GET salons/:salon_id/services/1 or /services/1.json
  def show
  end

  # GET salons/:salon_id/services/new
  def new
    @service = Service.new
  end

  # GET salons/:salon_id/services/1/edit
  def edit
  end

  # POST /salons/:salon_id/services or /services.json
  def create
    @service = @salon.services.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to [@salon, @service], notice: "Service was successfully created." }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salons/:salon_id/services/1 or /services/1.json
  def update
    respond_to do |format|
      byebug
      if @service.update(service_params)
        format.html { redirect_to [@salon, @service], notice: "Service was successfully updated." }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1 or /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: "Service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    def set_salon
      @salon = Salon.find(params[:salon_id])
    end

    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:name, :description, :start_time, :end_time, :price, :salon_id)
    end
end
