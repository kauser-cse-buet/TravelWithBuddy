class TravelEventsController < ApplicationController
  before_action :set_travel_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  # GET /travel_events
  # GET /travel_events.json
  def index
    @travel_events = TravelEvent.all
  end

  # GET /travel_events/1
  # GET /travel_events/1.json
  def show
  end

  # GET /travel_events/new
  def new
    @travel_event = TravelEvent.new
  end

  # GET /travel_events/1/edit
  def edit
  end

  # POST /travel_events
  # POST /travel_events.json
  def create
    @travel_event = TravelEvent.new(travel_event_params)

    respond_to do |format|
      if @travel_event.save
        format.html { redirect_to @travel_event, notice: 'Travel event was successfully created.' }
        format.json { render :show, status: :created, location: @travel_event }
      else
        format.html { render :new }
        format.json { render json: @travel_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travel_events/1
  # PATCH/PUT /travel_events/1.json
  def update
    respond_to do |format|
      if @travel_event.update(travel_event_params)
        format.html { redirect_to @travel_event, notice: 'Travel event was successfully updated.' }
        format.json { render :show, status: :ok, location: @travel_event }
      else
        format.html { render :edit }
        format.json { render json: @travel_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travel_events/1
  # DELETE /travel_events/1.json
  def destroy
    @travel_event.destroy
    respond_to do |format|
      format.html { redirect_to travel_events_url, notice: 'Travel event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_event
      @travel_event = TravelEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_event_params
      params.fetch(:travel_event, {})
    end
end
