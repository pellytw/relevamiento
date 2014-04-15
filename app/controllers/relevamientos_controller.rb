class RelevamientosController < ApplicationController
  # GET /relevamientos
  # GET /relevamientos.json
  def index
    @relevamientos = Relevamiento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relevamientos }
    end
  end

  # GET /relevamientos/1
  # GET /relevamientos/1.json
  def show
    @relevamiento = Relevamiento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @relevamiento }
    end
  end

  # GET /relevamientos/new
  # GET /relevamientos/new.json
  def new
    @relevamiento = Relevamiento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relevamiento }
    end
  end

  # GET /relevamientos/1/edit
  def edit
    if session["id_actual"].to_s == params[:id] then
      @relevamiento = Relevamiento.find(params[:id])
    else
      respond_to do |format|
        format.html { redirect_to root_url, notice: "Usted no puede editar este relevamiento" }
        format.json { head :no_content }
      end
    end
  end

  # POST /relevamientos
  # POST /relevamientos.json
  def create
    @relevamiento = Relevamiento.new(params[:relevamiento])

    respond_to do |format|
      if @relevamiento.save
        session["id_actual"] = @relevamiento.id
        format.html { redirect_to @relevamiento, notice: 'Relevamiento ha sido creado correctamente.' }
        format.json { render json: @relevamiento, status: :created, location: @relevamiento }
      else
        format.html { render action: "new" }
        format.json { render json: @relevamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /relevamientos/1
  # PUT /relevamientos/1.json
  def update
    @relevamiento = Relevamiento.find(params[:id])

    respond_to do |format|
      if @relevamiento.update_attributes(params[:relevamiento])
        format.html { redirect_to @relevamiento, notice: 'Relevamiento ha sido actualizado correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relevamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relevamientos/1
  # DELETE /relevamientos/1.json
  def destroy
    @relevamiento = Relevamiento.find(params[:id])
    @relevamiento.destroy

    respond_to do |format|
      format.html { redirect_to relevamientos_url }
      format.json { head :no_content }
    end
  end
end
