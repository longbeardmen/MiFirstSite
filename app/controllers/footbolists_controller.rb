class FootbolistsController < ApplicationController
  before_action :set_footbolist, only: [:show, :edit, :update, :destroy]

  # GET /footbolists
  # GET /footbolists.json
  def index
    @footbolists = Footbolist.all
  end

  # GET /footbolists/1
  # GET /footbolists/1.json
  def show
  end

  # GET /footbolists/new
  def new
    @footbolist = Footbolist.new
  end

  # GET /footbolists/1/edit
  def edit
  end

  # POST /footbolists
  # POST /footbolists.json
  def create
    @footbolist = Footbolist.new(footbolist_params)

    respond_to do |format|
      if @footbolist.save
        format.html { redirect_to @footbolist, notice: 'Footbolist was successfully created.' }
        format.json { render :show, status: :created, location: @footbolist }
      else
        format.html { render :new }
        format.json { render json: @footbolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /footbolists/1
  # PATCH/PUT /footbolists/1.json
  def update
    respond_to do |format|
      if @footbolist.update(footbolist_params)
        format.html { redirect_to @footbolist, notice: 'Footbolist was successfully updated.' }
        format.json { render :show, status: :ok, location: @footbolist }
      else
        format.html { render :edit }
        format.json { render json: @footbolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /footbolists/1
  # DELETE /footbolists/1.json
  def destroy
    @footbolist.destroy
    respond_to do |format|
      format.html { redirect_to footbolists_url, notice: 'Footbolist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_footbolist
      @footbolist = Footbolist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def footbolist_params
      params.require(:footbolist).permit(:name, :second_name, :description, :club, :image)
    end
end
