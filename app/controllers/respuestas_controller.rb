class RespuestasController < ApplicationController
  before_action :set_respuesta, only: %i[ show edit update destroy ]

  # GET /respuesta or /respuesta.json
  def index
    @respuestas = TicketThread.all
  end

  # GET /respuesta/1 or /respuesta/1.json
  def show
  end

  # GET /respuesta/new
  def new
    @respuesta = TicketThread.new
  end

  # GET /respuesta/1/edit
  def edit
  end

  # POST /respuesta or /respuesta.json
  def create
    @respuesta = TicketThread.new(respuesta_params)

    respond_to do |format|
      if @respuesta.save
       # TicketSendMailer.send_signup_email(@ticket).deliver_now
        format.html { redirect_to @respuesta, notice: "Ticket was successfully created." }
        format.json { render :show, status: :created, location: @respuesta }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @respuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /respuesta/1 or /respuesta/1.json
  def update
    respond_to do |format|
      if @respuestas.update(respuesta_params)
        format.html { redirect_to @respuestas, notice: "Respuestum was successfully updated." }
        format.json { render :show, status: :ok, location: @respuesta }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @respuestas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /respuesta/1 or /respuesta/1.json
  def destroy
    @respuestas.destroy
    respond_to do |format|
      format.html { redirect_to respuesta_url, notice: "Respuestum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respuesta
      @respuesta = TicketThread.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def respuesta_params
         params.fetch(:TicketThread, {}).permit(:title, :descripcion, :ticket_id)
    end
end
