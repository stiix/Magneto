class ChainesController < ApplicationController
  # GET /chaines
  # GET /chaines.json
  def index
    @chaines = Chaine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @chaines }
    end
  end

  # GET /chaines/1
  # GET /chaines/1.json
  def show
    @chaine = Chaine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @chaine }
    end
  end

  # GET /chaines/new
  # GET /chaines/new.json
  def new
    @chaine = Chaine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @chaine }
    end
  end

  # GET /chaines/1/edit
  def edit
    @chaine = Chaine.find(params[:id])
  end

  # POST /chaines
  # POST /chaines.json
  def create
    @chaine = Chaine.new(params[:chaine])

    respond_to do |format|
      if @chaine.save
        format.html { redirect_to @chaine, notice: 'Chaine was successfully created.' }
        format.json { render json: @chaine, status: :created, location: @chaine }
      else
        format.html { render action: "new" }
        format.json { render json: @chaine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /chaines/1
  # PUT /chaines/1.json
  def update
    @chaine = Chaine.find(params[:id])

    respond_to do |format|
      if @chaine.update_attributes(params[:chaine])
        format.html { redirect_to @chaine, notice: 'Chaine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @chaine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chaines/1
  # DELETE /chaines/1.json
  def destroy
    @chaine = Chaine.find(params[:id])
    @chaine.destroy

    respond_to do |format|
      format.html { redirect_to chaines_url }
      format.json { head :no_content }
    end
  end
end
