class MessageQueuesController < ApplicationController
  before_action :set_message_queue, only: [:show, :edit, :update, :destroy]

  # GET /message_queues
  # GET /message_queues.json
  def index
    @message_queues = MessageQueue.all
  end

  # GET /message_queues/1
  # GET /message_queues/1.json
  def show
  end

  # GET /message_queues/new
  def new
    @message_queue = MessageQueue.new
  end

  # GET /message_queues/1/edit
  def edit
  end

  # POST /message_queues
  # POST /message_queues.json
  def create
    @message_queue = MessageQueue.new(message_queue_params)

    respond_to do |format|
      if @message_queue.save
        format.html { redirect_to @message_queue, notice: 'Message queue was successfully created.' }
        format.json { render :show, status: :created, location: @message_queue }
      else
        format.html { render :new }
        format.json { render json: @message_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /message_queues/1
  # PATCH/PUT /message_queues/1.json
  def update
    respond_to do |format|
      if @message_queue.update(message_queue_params)
        format.html { redirect_to @message_queue, notice: 'Message queue was successfully updated.' }
        format.json { render :show, status: :ok, location: @message_queue }
      else
        format.html { render :edit }
        format.json { render json: @message_queue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /message_queues/1
  # DELETE /message_queues/1.json
  def destroy
    @message_queue.destroy
    respond_to do |format|
      format.html { redirect_to message_queues_url, notice: 'Message queue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message_queue
      @message_queue = MessageQueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_queue_params
      params.require(:message_queue).permit(:name)
    end
end
