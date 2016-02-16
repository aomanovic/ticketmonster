class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy]

  # GET /shows
  # GET /shows.json
  def index
    params[:search] ||= {}
    if params[:search][:search]
      @events = Event.search(params[:search][:search])
      @shows = Show.where(event_id: @events.map(&:id))
    else
      @shows ||= Show.all
    end
    @shows = @shows.where('showtime between ? and ?', Date.strptime(params[:search][:start], "%d/%m/%Y"), Date.strptime(params[:search][:end], "%d/%m/%Y")) if params[:search][:start] and params[:search][:end]

  end


  # GET /shows/1
  # GET /shows/1.json
  def show
  end

  # GET /shows/new
  def new
    @events = Event.all
    @venues = Venue.all
    @venue_layouts = VenueLayout.all
    @show = Show.new
  end

  # GET /shows/1/edit
  def edit
    @events = Event.all
    @venues = Venue.all
    @venue_layouts = VenueLayout.all
  end

  # POST /shows
  # POST /shows.json
  def create
    @show = Show.new(show_params)

    respond_to do |format|
      if @show.save
        flash[:success] = "Show was successfully created."
        format.html { redirect_to @show }
        format.json { render :show, status: :created, location: @show }
      else
        format.html { render :new }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shows/1
  # PATCH/PUT /shows/1.json
  def update
    respond_to do |format|
      if @show.update(show_params)
        flash[:success] = "Show was successfully updated."
        format.html { redirect_to @show }
        format.json { render :show, status: :ok, location: @show }
      else
        format.html { render :edit }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shows/1
  # DELETE /shows/1.json
  def destroy
    @show.destroy
    respond_to do |format|
      flash[:success] = "Show was successfully destroyed."
      format.html { redirect_to shows_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show
      @show = Show.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_params
      params.require(:show).permit(:event_id, :venue_id, :showtime, :venue_layout_id)
    end
end
