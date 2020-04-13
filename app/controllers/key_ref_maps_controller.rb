class KeyRefMapsController < ApplicationController
  before_action :set_key_ref_map, only: [:show, :edit, :update, :destroy]

  # GET /key_ref_maps
  # GET /key_ref_maps.json
  def index
    @key_ref_maps = KeyRefMap.all
  end

  # GET /key_ref_maps/1
  # GET /key_ref_maps/1.json
  def show
  end

  # GET /key_ref_maps/new
  def new
    @key_ref_map = KeyRefMap.new
  end

  # GET /key_ref_maps/1/edit
  def edit
  end

  # POST /key_ref_maps
  # POST /key_ref_maps.json
  def create
    @key_ref_map = KeyRefMap.new(key_ref_map_params)

    respond_to do |format|
      if @key_ref_map.save
        format.html { redirect_to @key_ref_map, notice: 'Key ref map was successfully created.' }
        format.json { render :show, status: :created, location: @key_ref_map }
      else
        format.html { render :new }
        format.json { render json: @key_ref_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /key_ref_maps/1
  # PATCH/PUT /key_ref_maps/1.json
  def update
    respond_to do |format|
      if @key_ref_map.update(key_ref_map_params)
        format.html { redirect_to @key_ref_map, notice: 'Key ref map was successfully updated.' }
        format.json { render :show, status: :ok, location: @key_ref_map }
      else
        format.html { render :edit }
        format.json { render json: @key_ref_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /key_ref_maps/1
  # DELETE /key_ref_maps/1.json
  def destroy
    @key_ref_map.destroy
    respond_to do |format|
      format.html { redirect_to key_ref_maps_url, notice: 'Key ref map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_key_ref_map
      @key_ref_map = KeyRefMap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def key_ref_map_params
      params.require(:key_ref_map).permit(:book, :chapter, :verse_start, :verse_end, :keyword_id)
    end
end
