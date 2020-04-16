class KeyRefMapsController < ApplicationController
  before_action :set_key_ref_map, only: [:index, :show, :edit, :update, :destroy]

  helper_method :ref_match
  helper_method :format_ref

  def ref_match(keyword_id)
    @ref_match = KeyRefMap.where("keyword_id = ?", keyword_id).limit(40)
  end

  def format_ref(krm)
    verse = krm.verse_start
    if krm.verse_end != krm.verse_start
      verse = "#{verse}-#{krm.verse_end}"
    end
    @format_ref = krm.book + " #{krm.chapter}:#{verse}"
  end

  # GET /key_ref_maps
  # GET /key_ref_maps.json
  def index  
    Rails.logger.warn "In index"
    Rails.logger.warn params{'keyword_id'}
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
      @key_ref_map = KeyRefMap.where("keyword_id = ?", params[:keyword_id]).limit(40)
      @key_ref_map = ref_match(params[:keyword_id])
      @keywords = Keyword.where("keyword_id = ?", params[:keyword_id]).limit(40)
      @keywords = Keyword.where(nil)

      Rails.logger.warn "In set_key_ref_map"
      Rails.logger.warn @keywords.length
        
    end

    # Only allow a list of trusted parameters through.
    def key_ref_map_params
      params.require(:key_ref_map, :keyword_id).permit(:book, :chapter, :verse_start, :verse_end)
    end
end
