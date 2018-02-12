class TablebookingsController < ApplicationController
  before_action :set_tablebooking, only: [:show, :edit, :update, :destroy]

  # GET /tablebookings
  # GET /tablebookings.json
  def index
    @tablebookings = Tablebooking.all
  end

  # GET /tablebookings/1
  # GET /tablebookings/1.json
  def show
    @guests = @tablebooking.guests.order('created_at DESC')
    @tables = @tablebooking.table_id
    @events = @tablebooking.event.title
  end

  # GET /tablebookings/new
  def new
    @tablebooking = Tablebooking.new
  end

  # GET /tablebookings/1/edit
  def edit
  end

  # POST /tablebookings
  # POST /tablebookings.json
  def create
    @tablebooking = Tablebooking.new(tablebooking_params)

    respond_to do |format|
      if @tablebooking.save
        format.html { redirect_to @tablebooking, notice: 'Tablebooking was successfully created.' }
        format.json { render :show, status: :created, location: @tablebooking }
      else
        format.html { render :new }
        format.json { render json: @tablebooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tablebookings/1
  # PATCH/PUT /tablebookings/1.json
  def update
    respond_to do |format|
      if @tablebooking.update(tablebooking_params)
        format.html { redirect_to @tablebooking, notice: 'Tablebooking was successfully updated.' }
        format.json { render :show, status: :ok, location: @tablebooking }
      else
        format.html { render :edit }
        format.json { render json: @tablebooking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tablebookings/1
  # DELETE /tablebookings/1.json
  def destroy
    @tablebooking.destroy
    respond_to do |format|
      format.html { redirect_to tablebookings_url, notice: 'Tablebooking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablebooking
      @tablebooking = Tablebooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tablebooking_params
      params.require(:tablebooking).permit(:tablebooking, :table_id, :guest, :first_name, :last_name, :guestlist_id, :event_title, :table_id, :guestlist, :event_id)
    end
end
