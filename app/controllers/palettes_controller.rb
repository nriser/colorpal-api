class PalettesController < ProtectedController
  before_action :set_palette, only: [:show, :update, :destroy]

  # GET /palettes
  def index
    # @palettes = Palette.all
    @palettes = current_user.palettes
    render json: @palettes
  end

  # GET /palettes/1
  def show
    @palette = current_user.palettes.find(params[:id])
    render json: @palette
  end

  # POST /palettes
  def create
    # @palette = Palette.new(palette_params)
    @palette = current_user.palettes.build(palette_params)

    if @palette.save
      render json: @palette, status: :created, location: @palette
    else
      render json: @palette.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /palettes/1
  def update
    if @palette.update(palette_params)
      render json: @palette
    else
      render json: @palette.errors, status: :unprocessable_entity
    end
  end

  # DELETE /palettes/1
  def destroy
    @palette.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palette
      # @palette = Palette.find(params[:id])
      @palette = current_user.palettes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def palette_params
      params.require(:palette).permit(:color1, :color2, :color3, :color4)
    end
end
