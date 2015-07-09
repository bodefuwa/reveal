class PrayerPointsController < ApplicationController
  before_action :set_prayer_point, only: [:show, :edit, :update, :destroy]

  # GET /prayer_points
  # GET /prayer_points.json
  def index
    @prayer_points = PrayerPoint.all
  end

  # GET /prayer_points/1
  # GET /prayer_points/1.json
  def show
  end

  # GET /prayer_points/new
  def new
    @prayer_point = PrayerPoint.new
  end

  # GET /prayer_points/1/edit
  def edit
  end

  # POST /prayer_points
  # POST /prayer_points.json
  def create
    @prayer_point = PrayerPoint.new(prayer_point_params)

    respond_to do |format|
      if @prayer_point.save
        format.html { redirect_to @prayer_point, notice: 'Prayer point was successfully created.' }
        format.json { render :show, status: :created, location: @prayer_point }
      else
        format.html { render :new }
        format.json { render json: @prayer_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prayer_points/1
  # PATCH/PUT /prayer_points/1.json
  def update
    respond_to do |format|
      if @prayer_point.update(prayer_point_params)
        format.html { redirect_to @prayer_point, notice: 'Prayer point was successfully updated.' }
        format.json { render :show, status: :ok, location: @prayer_point }
      else
        format.html { render :edit }
        format.json { render json: @prayer_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayer_points/1
  # DELETE /prayer_points/1.json
  def destroy
    @prayer_point.destroy
    respond_to do |format|
      format.html { redirect_to prayer_points_url, notice: 'Prayer point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prayer_point
      @prayer_point = PrayerPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prayer_point_params
      params.require(:prayer_point).permit(:point, :prayer_id)
    end
end
