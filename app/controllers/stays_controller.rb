class StaysController < ApplicationController
  # GET /stays
  # GET /stays.json
  def index
    @stays = Stay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stays }
    end
  end

  # GET /stays/1
  # GET /stays/1.json
  def show
    @stay = Stay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stay }
    end
  end

  # GET /stays/new
  # GET /stays/new.json
  def new
    @stay = Stay.new(params[:stay])
    if params[:new_stays_for_person]
    @stay.person_id = params[:new_stays_for_person]
    end
    if params[:new_stays_for_group]
        @stay.group_id = params[:new_stays_for_group]
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stay }
    end
  end

  # GET /stays/1/edit
  def edit
    @stay = Stay.find(params[:id])
  end

  # POST /stays
  # POST /stays.json
  def create
    @stay = Stay.new(params[:stay])
    

    respond_to do |format|
      if @stay.save
        format.html { redirect_to @stay, notice: 'Stay was successfully created.' }
        format.json { render json: @stay, status: :created, location: @stay }
      else
        format.html { render action: "new" }
        format.json { render json: @stay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stays/1
  # PUT /stays/1.json
  def update
    @stay = Stay.find(params[:id])

    respond_to do |format|
      if @stay.update_attributes(params[:stay])
        format.html { redirect_to @stay, notice: 'Stay was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stays/1
  # DELETE /stays/1.json
  def destroy
    @stay = Stay.find(params[:id])
    @stay.destroy

    respond_to do |format|
      format.html { redirect_to stays_url }
      format.json { head :no_content }
    end
  end
end
