class AmbassadorsController < ApplicationController
  before_action :set_ambassador, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /promoters
  # GET /promoters.json
  def index
    @ambassadors = Ambassador.all
  end

  # GET /promoters/1
  # GET /promoters/1.json
  def show
    @ambassador = Ambassador.friendly.find(params[:id])
  end

  # GET /promoters/new
  def new
    @ambassador = Ambassador.new
  end

  # GET /promoters/1/edit
  def edit
  end

  # POST /promoters
  # POST /promoters.json
  def create
    @ambassador = Ambassador.new(ambassador_params)

    respond_to do |format|
      if @ambassador.save
        format.html { redirect_to @ambassador, notice: 'Ambassador was successfully created.' }
        format.json { render :show, status: :created, location: @ambassador }
      else
        format.html { render :new }
        format.json { render json: @ambassador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promoters/1
  # PATCH/PUT /promoters/1.json
  def update
    respond_to do |format|
      if @ambassador.update(ambassador_params)
        format.html { redirect_to @ambassador, notice: 'Promoter was successfully updated.' }
        format.json { render :show, status: :ok, location: @ambassador }
      else
        format.html { render :edit }
        format.json { render json: @ambassador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promoters/1
  # DELETE /promoters/1.json
  def destroy
    @ambassador.destroy
    respond_to do |format|
      format.html { redirect_to ambassadors_url, notice: 'Ambassador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambassador
      @ambassador = Ambassador.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ambassador_params
      params.require(:ambassador).permit(:name, :guest_id, :slug)
    end
end
