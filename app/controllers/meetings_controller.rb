class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[show edit update destroy]

  # GET /meetings
  def index
    @meetings = Meeting.all
  end

  # GET /meetings/:id
  def show
  end

  # GET /meetings/new
  def new
    @meeting = Meeting.new
  end

  # GET /meetings/:id/edit
  def edit
  end

  # POST /meetings
  def create
    @meeting = Meeting.new(meeting_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: "Meeting was successfully created." }
        format.json { render :show, status: :created, location: @meeting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meetings/:id
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: "Meeting was successfully updated." }
        format.json { render :show, status: :ok, location: @meeting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/:id
  def destroy
    @meeting.destroy
    redirect_to meetings_path, notice: "Meeting was successfully destroyed."
  end

  private

  # Find the meeting by ID and handle not found errors gracefully
  def set_meeting
    @meeting = Meeting.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to meetings_path, alert: "Meeting not found."
  end

  # Only allow trusted parameters
  def meeting_params
    params.require(:meeting).permit(:title, :scheduled_for)
  end
end
