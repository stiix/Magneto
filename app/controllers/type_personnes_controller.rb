class TypePersonnesController < ApplicationController
  # GET /type_personnes
  # GET /type_personnes.json
  def index
    @type_personnes = TypePersonne.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_personnes }
    end
  end

  # GET /type_personnes/1
  # GET /type_personnes/1.json
  def show
    @type_personne = TypePersonne.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_personne }
    end
  end

  # GET /type_personnes/new
  # GET /type_personnes/new.json
  def new
    @type_personne = TypePersonne.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_personne }
    end
  end

  # GET /type_personnes/1/edit
  def edit
    @type_personne = TypePersonne.find(params[:id])
  end

  # POST /type_personnes
  # POST /type_personnes.json
  def create
    @type_personne = TypePersonne.new(params[:type_personne])

    respond_to do |format|
      if @type_personne.save
        format.html { redirect_to @type_personne, notice: 'Type personne was successfully created.' }
        format.json { render json: @type_personne, status: :created, location: @type_personne }
      else
        format.html { render action: "new" }
        format.json { render json: @type_personne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_personnes/1
  # PUT /type_personnes/1.json
  def update
    @type_personne = TypePersonne.find(params[:id])

    respond_to do |format|
      if @type_personne.update_attributes(params[:type_personne])
        format.html { redirect_to @type_personne, notice: 'Type personne was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_personne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_personnes/1
  # DELETE /type_personnes/1.json
  def destroy
    @type_personne = TypePersonne.find(params[:id])
    @type_personne.destroy

    respond_to do |format|
      format.html { redirect_to type_personnes_url }
      format.json { head :no_content }
    end
  end
end
