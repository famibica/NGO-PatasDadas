class CachorrosController < ApplicationController
  before_action :set_cachorro, only: [:show, :edit, :update, :destroy]

  # GET /cachorros
  def index
    @cachorros = Cachorro.all
  end

  # GET /cachorros/1
  def show
  end

  # GET /cachorros/new
  def new
    @cachorro = Cachorro.new
  end

  # GET /cachorros/1/edit
  def edit
  end

  # POST /cachorros
  def create
    @cachorro = Cachorro.new(cachorro_params)

    if @cachorro.save
      redirect_to @cachorro, notice: 'Cachorro was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cachorros/1
  def update
    if @cachorro.update(cachorro_params)
      redirect_to @cachorro, notice: 'Cachorro was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cachorros/1
  def destroy
    @cachorro.destroy
    redirect_to cachorros_url, notice: 'Cachorro was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cachorro
      @cachorro = Cachorro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cachorro_params
      params.require(:cachorro).permit(:nome, :data_de_nascimento, :data_aproximada, :porte, :sexo, :saude, :temperamento, :foto, :equipamento, :dupla_para_passeio_id, :frequencia_de_passeio, :tempo_de_passeio, :habilitado_para_passeio)
    end
end
