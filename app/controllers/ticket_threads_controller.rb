class TicketThreadsController < ApplicationController
  before_action :set_ticket_thread, only: [:show, :edit, :update, :destroy]

  # GET /ticket_threads
  # GET /ticket_threads.json
  def index
    @ticket_threads = TicketThread.all
  end

  # GET /ticket_threads/1
  # GET /ticket_threads/1.json
  def show
  end

  # GET /ticket_threads/new
  def new
    @ticket_thread = TicketThread.new
  end

  # GET /ticket_threads/1/edit
  def edit
  end

  # POST /ticket_threads
  # POST /ticket_threads.json
  def create
    @ticket_thread = TicketThread.new(ticket_thread_params)

    respond_to do |format|
      if @ticket_thread.save
        format.html { redirect_to @ticket_thread, notice: 'Ticket thread was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_thread }
      else
        format.html { render :new }
        format.json { render json: @ticket_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_threads/1
  # PATCH/PUT /ticket_threads/1.json
  def update
    respond_to do |format|
      if @ticket_thread.update(ticket_thread_params)
        format.html { redirect_to @ticket_thread, notice: 'Ticket thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_thread }
      else
        format.html { render :edit }
        format.json { render json: @ticket_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_threads/1
  # DELETE /ticket_threads/1.json
  def destroy
    @ticket_thread.destroy
    respond_to do |format|
      format.html { redirect_to ticket_threads_url, notice: 'Ticket thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_thread
      @ticket_thread = TicketThread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_thread_params
      params.require(:ticket_thread).permit(:name)
    end
end
