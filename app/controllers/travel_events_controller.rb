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

  def invitations
    @invitations = Invitation.where(:user_id == current_admin.id)
  end

  def join
    
  end

  def join_event
    @travel_event_id = params[:id]
    Attendee.create(paid: true, user_id:current_admin.id,travel_event_id:@travel_event_id)
  end

  def add_review
    @travel_event_id = params[:id]
    @des = params[:description]
    Review.create(user_id:current_admin.id, travel_event_id:@travel_event_id,description:@des)
  end

  def create_invitations
    @user_ids = params[:user_ids]
    @des = params[:description]
    @from = current_admin.id
    error = false
    @user_ids.each do |id|
      @invitation = Invitation.create(description: @des,from: @from, user_id: id,travel_event_id: params[:id])
      if !@invitation.id
        error = true
      end
    end
    if !error
      redirect_to home_url
    else

    end
  end

  def new_invitations
    @event = TravelEvent.find(params[:id])

    @invitations = []
    User.all.each do |user|
      @invitation = Invitation.new
      @invitation.travel_event_id = params[:id]
      @invitation.user_id = user.id
      @invitations << @invitation
    end
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
