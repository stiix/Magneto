class PersonnesProgrammesController < ApplicationController
  # GET /personnes_programmes
  # GET /personnes_programmes.json
  def index
    @personnes_programmes = PersonnesProgramme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personnes_programmes }
    end
  end

  # GET /personnes_programmes/1
  # GET /personnes_programmes/1.json
  def show
    @personnes_programme = PersonnesProgramme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personnes_programme }
    end
  end

  # GET /personnes_programmes/new
  # GET /personnes_programmes/new.json
  def new
    @personnes_programme = PersonnesProgramme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personnes_programme }
    end
  end

  # GET /personnes_programmes/1/edit
  def edit
    @personnes_programme = PersonnesProgramme.find(params[:id])
  end

  # POST /personnes_programmes
  # POST /personnes_programmes.json
  def create
    @personnes_programme = PersonnesProgramme.new(params[:personnes_programme])

    respond_to do |format|
      if @personnes_programme.save
        format.html { redirect_to @personnes_programme, notice: 'Personnes programme was successfully created.' }
        format.json { render json: @personnes_programme, status: :created, location: @personnes_programme }
      else
        format.html { render action: "new" }
        format.json { render json: @personnes_programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personnes_programmes/1
  # PUT /personnes_programmes/1.json
  def update
    @personnes_programme = PersonnesProgramme.find(params[:id])

    respond_to do |format|
      if @personnes_programme.update_attributes(params[:personnes_programme])
        format.html { redirect_to @personnes_programme, notice: 'Personnes programme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personnes_programme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnes_programmes/1
  # DELETE /personnes_programmes/1.json
  def destroy
    @personnes_programme = PersonnesProgramme.find(params[:id])
    @personnes_programme.destroy

    respond_to do |format|
      format.html { redirect_to personnes_programmes_url }
      format.json { head :no_content }
    end
  end
end
