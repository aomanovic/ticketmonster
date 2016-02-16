class AllocationsController < ApplicationController
  before_action :set_allocation, only: [:show, :edit, :update, :destroy]

  # GET /allocations
  # GET /allocations.json
  def index
    @allocations = Allocation.all
    @show = Show.find_by(id: params[:show_id])
  end

  # GET /allocations/1
  # GET /allocations/1.json
  def show
  end

  def update_price_categories
    @show = Show.find_by(id: params[:show_id])
    @price_categories = PriceCategory.where("event_id = ?", @show.event_id)
    respond_to do |format|
      format.js
    end
  end

  # GET /allocations/new
  def new
    @shows = Show.all
    @price_categories = PriceCategory.where("event_id = ?", Show.first.event.id)
    @price_category = PriceCategory.find_by(id: params[:price_category_id])
    @allocation = Allocation.new(:show_id => params[:show_id])
  end

  # GET /allocations/1/edit
  def edit
  end

  # POST /allocations
  # POST /allocations.json
  def create
    @allocation = Allocation.new(allocation_params)

    respond_to do |format|
      if @allocation.save
        flash[:success] = "Allocation was successfully created."
        format.html { redirect_to @allocation }
        format.json { render :show, status: :created, location: @allocation }
      else
        format.html { render :new }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocations/1
  # PATCH/PUT /allocations/1.json
  def update
    respond_to do |format|
      if @allocation.update(allocation_params)
        format.html { redirect_to @allocation, notice: 'Allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @allocation }
      else
        format.html { render :edit }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocations/1
  # DELETE /allocations/1.json
  def destroy
    @allocation.destroy
    respond_to do |format|
      format.html { redirect_to allocations_url, notice: 'Allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocation
      @allocation = Allocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allocation_params
      params.require(:allocation).permit(:assigned, :user_id, :show_id, :row_id, :quantity, :start_seat, :end_seat, :price, :price_category_id)
    end
end
