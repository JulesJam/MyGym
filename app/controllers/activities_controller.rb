class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  # GET /activities
  # GET /activities.json
  def index
    @activities = Activity.all
  end

  def activities_attending
    @activities_attending = current_user.activities_attending
  
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
    if current_user.admin_level<5
      flash[:notice] = 'You do not have the authority to amend this activity.'
      redirect_to activities_path
    end
  end

  # POST /activities
  # POST /activities.json
  def create

    @activity = Activity.new(activity_params)
    @activity.creator = current_user

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity }
      else
        format.html { render :edit }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def cancel
    activity = Activity.find(params[:id])
    current_user.activities_attending.delete(activity) if activity
    flash[:notice] = 'Event was cancelled.'
    redirect_to activities_attending_path
  end

  def book
    activity = Activity.find(params[:id])
    current_user.activities_attending << activity
    flash[:notice] = 'Event was saved.'
    redirect_to activities_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:activity_name, :description, :location, :date, :start_time, :duration, :number_of_places, :status, :active, :image, :places_taken)
    end
end
