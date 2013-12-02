class PointTotalsController < ApplicationController
  before_action :set_point_total, only: [:show, :edit, :update, :destroy]

  # GET /point_totals
  # GET /point_totals.json
  def index
    @point_totals = PointTotal.all
  end

  # GET /point_totals/1
  # GET /point_totals/1.json
  def show
  end

  # GET /point_totals/new
  def new
    @point_total = PointTotal.new
  end

  # GET /point_totals/1/edit
  def edit
  end

  # POST /point_totals
  # POST /point_totals.json
  def create
    @point_total = PointTotal.new(point_total_params)

    respond_to do |format|
      if @point_total.save
        format.html { redirect_to @point_total, notice: 'Point total was successfully created.' }
        format.json { render action: 'show', status: :created, location: @point_total }
      else
        format.html { render action: 'new' }
        format.json { render json: @point_total.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /point_totals/1
  # PATCH/PUT /point_totals/1.json
  def update
    respond_to do |format|
      if @point_total.update(point_total_params)
        format.html { redirect_to @point_total, notice: 'Point total was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @point_total.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /point_totals/1
  # DELETE /point_totals/1.json
  def destroy
    @point_total.destroy
    respond_to do |format|
      format.html { redirect_to point_totals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_point_total
      @point_total = PointTotal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def point_total_params
      params[:point_total]
    end
end
