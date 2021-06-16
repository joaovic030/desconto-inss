class ProponentesController < ApplicationController
  require 'proponentes/calculo'

  before_action :set_proponente, only: %i[ show edit update destroy ]
  before_action :set_desconto_inss, only: :apply_desconto_inss

  # GET /proponentes or /proponentes.json
  def index
    @proponentes = Proponente.all
  end

  # GET /proponentes/1 or /proponentes/1.json
  def show
  end

  # GET /proponentes/new
  def new
    @proponente = Proponente.new
    @proponente.build_endereco
  end

  # GET /proponentes/1/edit
  def edit
  end

  def apply_desconto_inss
    respond_to do |format|
      format.json { render json: { salario: @desconto } }
    end
  end
  # POST /proponentes or /proponentes.json
  def create
    @proponente = Proponente.new(proponente_params)

    respond_to do |format|
      if @proponente.save
        format.html { redirect_to @proponente, notice: "Proponente was successfully created." }
        format.json { render :show, status: :created, location: @proponente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proponente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proponentes/1 or /proponentes/1.json
  def update
    respond_to do |format|
      if @proponente.update(proponente_params)
        format.html { redirect_to @proponente, notice: "Proponente was successfully updated." }
        format.json { render :show, status: :ok, location: @proponente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proponente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proponentes/1 or /proponentes/1.json
  def destroy
    @proponente.destroy
    respond_to do |format|
      format.html { redirect_to proponentes_url, notice: "Proponente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proponente
      @proponente = Proponente.find(params[:id])
    end

    def set_desconto_inss
      @desconto = Proponentes::Calculo.desconto_inss params[:salario]
    end
    # Only allow a list of trusted parameters through.
    def proponente_params
      params.require(:proponente).permit(:nome, :cpf, :data_de_nascimento, :telefone_pessoal,
                                         :telefone_referencias, :salario, :desconto_inss,
                                         endereco_attributes: [ Endereco.column_names - ['created_at', 'updated_at'] ])
    end
end
