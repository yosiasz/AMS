class ApartmentcomplexesController < ApplicationController
  # GET /apartmentcomplexes
  # GET /apartmentcomplexes.json
  def index
    @apartmentcomplexes = Apartmentcomplex.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apartmentcomplexes }
    end
  end

  # GET /apartmentcomplexes/1
  # GET /apartmentcomplexes/1.json
  def show
    @apartmentcomplex = Apartmentcomplex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apartmentcomplex }
    end
  end

  # GET /apartmentcomplexes/new
  # GET /apartmentcomplexes/new.json
  def new
    @apartmentcomplex = Apartmentcomplex.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apartmentcomplex }
    end
  end

  # GET /apartmentcomplexes/1/edit
  def edit
    @apartmentcomplex = Apartmentcomplex.find(params[:id])
  end

  # POST /apartmentcomplexes
  # POST /apartmentcomplexes.json
  def create
    @apartmentcomplex = Apartmentcomplex.new(params[:apartmentcomplex])

    respond_to do |format|
      if @apartmentcomplex.save
        format.html { redirect_to @apartmentcomplex, notice: 'Apartmentcomplex was successfully created.' }
        format.json { render json: @apartmentcomplex, status: :created, location: @apartmentcomplex }
      else
        format.html { render action: "new" }
        format.json { render json: @apartmentcomplex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apartmentcomplexes/1
  # PUT /apartmentcomplexes/1.json
  def update
    @apartmentcomplex = Apartmentcomplex.find(params[:id])

    respond_to do |format|
      if @apartmentcomplex.update_attributes(params[:apartmentcomplex])
        format.html { redirect_to @apartmentcomplex, notice: 'Apartmentcomplex was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @apartmentcomplex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartmentcomplexes/1
  # DELETE /apartmentcomplexes/1.json
  def destroy
    @apartmentcomplex = Apartmentcomplex.find(params[:id])
    @apartmentcomplex.destroy

    respond_to do |format|
      format.html { redirect_to apartmentcomplexes_url }
      format.json { head :ok }
    end
  end
end
