class PersonnesController < ApplicationController
  # GET /personnes
  # GET /personnes.json
  def index
    @personnes = Personne.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personnes }
    end
  end

  # GET /personnes/1
  # GET /personnes/1.json
  def show
    @personne = Personne.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personne }
    end
  end

  # GET /personnes/new
  # GET /personnes/new.json
  def new
    @personne = Personne.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personne }
    end
  end

  # GET /personnes/1/edit
  def edit
    @personne = Personne.find(params[:id])
  end

  # POST /personnes
  # POST /personnes.json
  def create
    @personne = Personne.new(params[:personne])

    respond_to do |format|
      if @personne.save
        format.html { redirect_to @personne, notice: 'Personne was successfully created.' }
        format.json { render json: @personne, status: :created, location: @personne }
      else
        format.html { render action: "new" }
        format.json { render json: @personne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personnes/1
  # PUT /personnes/1.json
  def update
    @personne = Personne.find(params[:id])

    respond_to do |format|
      if @personne.update_attributes(params[:personne])
        format.html { redirect_to @personne, notice: 'Personne was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnes/1
  # DELETE /personnes/1.json
  def destroy
    @personne = Personne.find(params[:id])
    @personne.destroy

    respond_to do |format|
      format.html { redirect_to personnes_url }
      format.json { head :no_content }
    end
  end
end
