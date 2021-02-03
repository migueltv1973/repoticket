class TicketThreadsController < ApplicationController
  before_action :set_ticket_thread, only: %i[ show edit update destroy ]

  # GET /ticket_threads or /ticket_threads.json
  def index
    @ticket_threads = TicketThread.all
  end

  # GET /ticket_threads/1 or /ticket_threads/1.json
  def show
  end

  # GET /ticket_threads/new
  def new
    @ticket_thread = TicketThread.new
  end

  # GET /ticket_threads/1/edit
  def edit
  end

  # POST /ticket_threads or /ticket_threads.json
  def create
    @ticket_thread = TicketThread.new(ticket_thread_params)

    respond_to do |format|
      if @ticket_thread.save
        format.html { redirect_to @ticket_thread, notice: "Ticket thread was successfully created." }
        format.json { render :show, status: :created, location: @ticket_thread }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_threads/1 or /ticket_threads/1.json
  def update
    respond_to do |format|
      if @ticket_thread.update(ticket_thread_params)
        format.html { redirect_to @ticket_thread, notice: "Ticket thread was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket_thread }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_threads/1 or /ticket_threads/1.json
  def destroy
    @ticket_thread.destroy
    respond_to do |format|
      format.html { redirect_to ticket_threads_url, notice: "Ticket thread was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_thread
      @ticket_thread = TicketThread.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_thread_params
      params.fetch(:ticket_thread, {}).permit(:title, :descripcion, :email, :photo, :status)
    end
end
