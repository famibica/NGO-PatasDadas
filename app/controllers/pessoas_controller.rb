class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /pessoas
  def index
    @pessoas = Pessoa.all
  end

  # GET /pessoas/1
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  def create
    @pessoa = Pessoa.new(pessoa_params)

    if @pessoa.save
      redirect_to @pessoa, notice: 'Parabéns! Seus dados foram armazenados.'
    else
      render :new
    end
  end

  # PATCH/PUT /pessoas/1
  def update
    if @pessoa.update(pessoa_params)
      redirect_to @pessoa, notice: 'Dados pessoais atualizados.'
    else
      render :edit
    end
  end

  # DELETE /pessoas/1
  def destroy
    @pessoa.destroy
    redirect_to pessoas_url, notice: 'Cadastro excluído.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pessoa_params
      params.require(:pessoa).permit(:nome, :data_de_nascimento, :email, :telefone, :foto)
    end
end
