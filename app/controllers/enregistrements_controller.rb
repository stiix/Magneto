class EnregistrementsController < ApplicationController
  # GET /enregistrements
  # GET /enregistrements.json
  def index
    @enregistrements = Enregistrement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enregistrements }
    end
  end

  # GET /enregistrements/1
  # GET /enregistrements/1.json
  def show
    @enregistrement = Enregistrement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enregistrement }
    end
  end

  # GET /enregistrements/new
  # GET /enregistrements/new.json
  def new
    @enregistrement = Enregistrement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enregistrement }
    end
  end

  # GET /enregistrements/1/edit
  def edit
    @enregistrement = Enregistrement.find(params[:id])
  end

  # POST /enregistrements
  # POST /enregistrements.json
  def create
    @enregistrement = Enregistrement.new(params[:enregistrement])

    respond_to do |format|
      if @enregistrement.save
        format.html { redirect_to @enregistrement, notice: 'Enregistrement was successfully created.' }
        format.json { render json: @enregistrement, status: :created, location: @enregistrement }
      else
        format.html { render action: "new" }
        format.json { render json: @enregistrement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enregistrements/1
  # PUT /enregistrements/1.json
  def update
    @enregistrement = Enregistrement.find(params[:id])

    respond_to do |format|
      if @enregistrement.update_attributes(params[:enregistrement])
        format.html { redirect_to @enregistrement, notice: 'Enregistrement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enregistrement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enregistrements/1
  # DELETE /enregistrements/1.json
  def destroy
    @enregistrement = Enregistrement.find(params[:id])
    @enregistrement.destroy

    respond_to do |format|
      format.html { redirect_to enregistrements_url }
      format.json { head :no_content }
    end
  end
end
