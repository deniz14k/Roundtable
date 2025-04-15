class ItemsController < ApplicationController
  before_action :set_meeting
  before_action :set_item, only: %i[ show edit update destroy toggle_discussed ]

  # GET /meetings/:meeting_id/items
  def index
    @items = @meeting.items
  end

  # GET /meetings/:meeting_id/items/:id
  def show
  end

  # GET /meetings/:meeting_id/items/new
  def new
    @item = @meeting.items.build
  end

  # GET /meetings/:meeting_id/items/:id/edit
  def edit
  end

  # POST /meetings/:meeting_id/items
  def create
    @item = @meeting.items.build(item_params)

    respond_to do |format|
      if @item.save
        format.turbo_stream
        format.html { redirect_to @meeting, notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: [@meeting, @item] }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/:meeting_id/items/:id
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.turbo_stream
        format.html { redirect_to @meeting, notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: [@meeting, @item] }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/:meeting_id/items/:id
  def destroy
    @item.destroy

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to meeting_path(@meeting), status: :see_other, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # PATCH /meetings/:meeting_id/items/:id/toggle_discussed
  def toggle_discussed
    @item.update(discussed: !@item.discussed)

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to meeting_path(@meeting), notice: "Item updated." }
    end
  end

  private

    def set_meeting
      @meeting = Meeting.find(params[:meeting_id])
    end

    def set_item
      @item = @meeting.items.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:content, :discussed)
    end
end
