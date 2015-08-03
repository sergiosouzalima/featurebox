class FeaturesController < ApplicationController
  before_action :set_feature, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js

  # GET /features
  # GET /features.json
  def index
    @features = Feature.all.sort_by{ |k,v| k.name }
    @feature  = Feature.new
  end

  # GET /features/1
  # GET /features/1.json
  def show
  end

  # GET /features/new
  def new
    @feature = Feature.new
    respond_to do |format|
      format.js
    end
  end

  # GET /features/1/edit
  def edit
    respond_to do |format|
      format.js
    end
  end

  # POST /features
  # POST /features.json
  def create
    @feature = Feature.new(feature_params)
    @feature.save
    respond_to do |format|
      format.js
    end
  end

  # PATCH/PUT /features/1
  # PATCH/PUT /features/1.json
  def update
    respond_to do |format|
      if @feature.update(feature_params)
        #format.html { redirect_to @feature, notice: 'Feature was successfully updated.' }
        #format.json { render :show, status: :ok, location: @feature }
        format.js
      else
        #format.html { render :edit }
        #format.json { render json: @feature.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /features/1
  # DELETE /features/1.json
  def destroy
    @feature.destroy
    #respond_to do |format|
    #  format.html { redirect_to features_url, notice: 'Feature was successfully destroyed.' }
    #  format.json { head :no_content }
    #end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_feature
    @feature = Feature.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def feature_params
    params.require(:feature).permit(:name)
  end
end
