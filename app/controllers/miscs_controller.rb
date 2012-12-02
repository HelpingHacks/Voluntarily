class MiscsController < ApplicationController
  # GET /miscs
  # GET /miscs.json
  def index
    @miscs = Misc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @miscs }
    end
  end

  # GET /miscs/1
  # GET /miscs/1.json
  def show
    @misc = Misc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @misc }
    end
  end

  # GET /miscs/new
  # GET /miscs/new.json
  def new
    @misc = Misc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @misc }
    end
  end

  # GET /miscs/1/edit
  def edit
    @misc = Misc.find(params[:id])
  end

  # POST /miscs
  # POST /miscs.json
  def create
    @misc = Misc.new(params[:misc])

    respond_to do |format|
      if @misc.save
        format.html { redirect_to @misc, notice: 'Misc was successfully created.' }
        format.json { render json: @misc, status: :created, location: @misc }
      else
        format.html { render action: "new" }
        format.json { render json: @misc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /miscs/1
  # PUT /miscs/1.json
  def update
    @misc = Misc.find(params[:id])

    respond_to do |format|
      if @misc.update_attributes(params[:misc])
        format.html { redirect_to @misc, notice: 'Misc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @misc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miscs/1
  # DELETE /miscs/1.json
  def destroy
    @misc = Misc.find(params[:id])
    @misc.destroy

    respond_to do |format|
      format.html { redirect_to miscs_url }
      format.json { head :no_content }
    end
  end
end
